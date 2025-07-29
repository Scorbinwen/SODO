# train yolo11l_ours artificial slim obj
# python train.py --model ../ultralytics/cfg/models/11/yolo11l_ours.yaml --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" --save_period 10 --epochs 200 --batch 100

# train yolo11l_baseline artificial slim obj
# python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" --save_period 10 --epochs 200 --batch 100 --slim_obj_assign False --reg_max_sub_one False --use_center_offset False --layer_wise_assign False

# train yolo11l_ours coco dataset
python train.py --model ../ultralytics/cfg/models/11/yolo11l_ours.yaml --data ../ultralytics/cfg/datasets/coco.yaml  --device "0" --save_period 10 --epochs 600 --batch 100

# resume training
# python train.py --model ../runs/train/weights/last.pt --resume True --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" --save_period 10 --epochs 200 --batch 80

