# python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" --save_period 10 --epochs 800 --batch 240
python train.py --model ../runs/train/weights/epoch300.pt --resume True --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" --save_period 10 --epochs 800 --batch 240
