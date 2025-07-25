from pathlib import Path
import sys
import os
import yaml
import argparse
import tempfile

# 设置环境变量和路径
os.environ['MKL_SERVICE_FORCE_INTEL'] = 'True'
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

    # 加载模型
    model = YOLO(args.model)
    # 执行验证
    model.val(**cfg_params)