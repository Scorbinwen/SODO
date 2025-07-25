from pathlib import Path
import sys
import os
import yaml
import argparse

# 设置环境变量和路径
os.environ['MKL_SERVICE_FORCE_INTEL'] = '1'  # 确保Intel MKL正常工作
FILE = Path(__file__).resolve()
ROOT = FILE.parents[1]  # 项目根目录
if str(ROOT) not in sys.path:
    sys.path.append(str(ROOT))

from ultralytics import YOLO
from ultralytics.utils.ops import parse_opt

if __name__ == "__main__":
    args = parse_opt()

    # 合并配置参数
    with open(args.cfg) as f:
        cfg_params = yaml.safe_load(f).get('predict', {})
    cfg_params.update({k: v for k, v in vars(args).items() if k not in ['model', 'cfg']})

    # 初始化模型
    model = YOLO(args.model)

    # 执行预测
    results = model.predict(
        **cfg_params,
    )
