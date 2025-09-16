# Slim Object Direct Offset (SODO): 目标检测

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Python 3.8+](https://img.shields.io/badge/Python-3.8%2B-blue)](https://www.python.org/downloads/)
[![PyTorch](https://img.shields.io/badge/PyTorch-1.12%2B-orange)](https://pytorch.org/)

SODO目标检测算法的官方实现，配套我们的论文[Slim Object Direct Offset (SODO): Why YOLO with TOOD struggles to detect slim objects? A new matching approach for slim objects]()。本项目解决了TOOD在细长物体检测中的问题。

## 📌 特性
- 🚀 高性能细长物体目标检测
- 🧩 用于细长物体目标匹配的SODO方法
- ⚡ 多GPU训练支持
- 🎯 在COCO数据集以及Roboflow的tans和pole_detection数据集上的实验结果

## 📦 安装

### 前提条件
- Python 3.10.13+
- CUDA 11.8+
- PyTorch 2.1.2+

### 分步安装
1. 克隆仓库:
   ```bash
   git clone https://github.com/Scorbinwen/SODO.git
   cd SODO
   ```

2. 参考[ultralytics](https://github.com/ultralytics/ultralytics)创建并激活虚拟环境
   

4. 安装依赖:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```
  （不要安装ultralytics的pip包，因为我们的SODO仓库尚未提交到ultralytics官方代码库）
## 🏋️ 训练

1. 配置训练参数:
   ```bash
   cd script
   # 编辑train.sh文件设置你的参数
   ```

2. 开始训练（多GPU示例）：
   ```bash
   sh train.sh
   ```
   *示例脚本：*
   ```bash
    python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
    --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
    --save_period 10 --epochs 200 --batch 400 --reg_max_sub_one True --use_center_offset False \
    --amp False --layer_wise_assign True --slim_obj_assign True --imgsz 320 --close_layer_wise_assign 0.2
    ```


## 🔍 推理

1. 运行预测：
   ```bash
   cd segment
   # 编辑predict.sh文件设置你的参数
   sh predict.sh
   ```
   *示例脚本：*
   ```bash
    python predict.py \
    --data../data/coco.yaml \
    --weights../weights/best.pt \
    --source /path/to/data
    --name your_pred_results
    ```

3. 输出结果保存在:
   ```
   runs/predict-seg/your_pred_results/
   ```

## 📊 实验结果
### 📈 定量结果（COCO test2017、pole_detection和tans数据集）
| Model               | COCO val mAP₅₀ | COCO val mAP₅₀-₉₅ | COCOSlim mAP₅₀ | COCOSlim mAP₅₀-₉₅ | pole_detection test mAP₅₀ | pole_detection test mAP₅₀-₉₅ | tans test mAP₅₀ | tans test mAP₅₀-₉₅ |
|---------------------|----------------|-------------------|----------------|-------------------|---------------------------|------------------------------|-----------------|--------------------|
| v11-L               | 0.702          | 0.534             | 0.721          | 0.562             | 0.824                     | 0.569                        | 0.695           | 0.494              |
| v11-L (SODO) **Ours** | **0.705**      | 0.530             | **0.731**      | 0.561             | **0.836**                 | **0.580**                    | **0.712**       | **0.501**          |
| v12-L               | 0.708          | 0.538             | 0.724          | 0.559             | 0.813                     | 0.566                        | 0.705           | 0.489              |
| v12-L (SODO) **Ours** | **0.711**      | 0.537             | **0.731**      | 0.558             | **0.832**                 | **0.578**                    | **0.729**       | **0.499**          |
| v13-L               | 0.709          | 0.581             | 0.740          | 0.577             | 0.816                     | 0.568                        | 0.738           | 0.531              |
| v13-L (SODO) **Ours** | **0.712**      | 0.580             | **0.746**      | 0.577             | **0.825**                 | **0.574**                    | **0.742**       | 0.501              |

*表1：在COCO test2017、pole_detection和tans数据集上的对比评估。所有指标均在IoU阈值0.50:0.95下报告。*


### 🖼️ 可视化结果（基线模型为YOLO11-L）


<div align="center">
  
**图1：COCO2017数据集上的细长物体检测定性示例**  
<img width="647" height="348" alt="image" src="https://github.com/user-attachments/assets/55b6ff03-dcd8-4d90-ab52-b9973c9a4d3f" />

**图2：pole_detection数据集上的细长物体检测定性示例**  
<img width="647" height="350" alt="image" src="https://github.com/user-attachments/assets/1b29eb97-26e2-42aa-85dc-436d3a856959" />

**图3：tans数据集上的细长物体检测定性示例**  
<img width="647" height="346" alt="image" src="https://github.com/user-attachments/assets/7a011575-f30e-493c-bd52-088e0781ff89" />



</div>

## 📜 引用
```bibtex
@article{当前暂时匿名}
```

## 🤝 致谢
- 原始ultralytics YOLO实现: [ultralytics YOLO](https://github.com/ultralytics/ultralytics)
- [pole_detection](https://universe.roboflow.com/poleproject/pole-detection-v2-bvqug) & [tans](https://universe.roboflow.com/2crack500/long-tans) 数据集

## 📄 许可证
本项目采用MIT许可证 - 详见[LICENSE](LICENSE) 文件.
