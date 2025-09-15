from pathlib import Path
import sys
import os
import yaml
import tempfile
os.environ['MKL_SERVICE_FORCE_INTEL'] = 'True'
# ... 保留原有路径设置 ...
FILE = Path(__file__).resolve()
ROOT = FILE.parents[1]
if str(ROOT) not in sys.path:
    sys.path.append(str(ROOT))
ROOT = Path(os.path.relpath(ROOT, Path.cwd()))
from ultralytics import YOLO
from ultralytics.utils.ops import parse_opt

if __name__ == "__main__":
    args = parse_opt()

    # 加载最终配置
    with open(args.cfg) as f:
        cfg_params = yaml.safe_load(f)

    # 合并命令行覆盖值
    command_overrides = {k: v for k, v in vars(args).items()
                         if k in cfg_params.keys() and v != cfg_params.get(k)}
    cfg_params.update(command_overrides)

    model = YOLO(args.model)
    temp_file = None
    try:
        temp_file = tempfile.NamedTemporaryFile(
            mode='w',
            suffix='.yaml',
            dir="../ultralytics/cfg/hyps/",
            delete=False  # 先设置为不自动删除
        )
        yaml.dump(cfg_params, temp_file)
        temp_file.flush()  # 确保写入磁盘
        # 执行训练
        model.train(
            cfg=temp_file.name  # 使用临时配置文件
        )
    except KeyboardInterrupt:
        print("The user manually interrupted the program and is cleaning up temporary files...")
    finally:
        if temp_file:
            try:
                temp_file.close()
                os.remove(temp_file.name)
            except FileNotFoundError:
                pass
            except Exception as e:
                print(f"An error occurred when deleting a temporary file: {e}")