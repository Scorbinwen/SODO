import json
import os
from tqdm import tqdm
from pathlib import Path
import sys
import os


# 设置环境变量和路径
os.environ['MKL_SERVICE_FORCE_INTEL'] = '1'  # 确保Intel MKL正常工作
FILE = Path(__file__).resolve()
ROOT = FILE.parents[1]  # 项目根目录
if str(ROOT) not in sys.path:
    sys.path.append(str(ROOT))

from ultralytics.data.converter import convert_coco


convert_coco("../runs/annotations_trainval2017/annotations", use_segments=True, use_keypoints=False, cls91to80=True)
