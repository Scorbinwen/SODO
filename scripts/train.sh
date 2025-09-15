## train artificial slim obj baseline
python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 320 --name train_v11_baseline

### train artificial slim obj drop_overlaps
#python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one False --use_center_offset False \
#--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 320



### train artificial slim obj baseline
#python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one False --use_center_offset False \
#--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 320


### train artificial slim obj baseline + drop overlaps
#python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one False --use_center_offset False \
#--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 320

### train artificial slim obj center offset + wo layer_wise_assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_center_offset.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one False --use_center_offset True \
#--amp True --layer_wise_assign False --slim_obj_assign True --imgsz 320

### train artificial slim obj regmax sub one + wo layer_wise_assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one True --use_center_offset False \
#--amp True --layer_wise_assign False --slim_obj_assign True --imgsz 320

### train artificial slim obj regmax sub one + with layer_wise_assign + full time layer wise assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one True --use_center_offset False \
#--amp False --layer_wise_assign True --slim_obj_assign True --imgsz 320 --close_layer_wise_assign 1.0

## train artificial slim obj regmax sub one + with layer_wise_assign + 20 epochs layer wise assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one True --use_center_offset False \
#--amp False --layer_wise_assign True --slim_obj_assign True --imgsz 320 --close_layer_wise_assign 0.2

## train artificial slim obj regmax sub one + with layer_wise_assign + 50 epochs layer wise assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 200 --batch 400 --reg_max_sub_one True --use_center_offset False \
#--amp False --layer_wise_assign True --slim_obj_assign True --imgsz 320 --close_layer_wise_assign 0.5

#
## train coco baseline
#python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
#--data ../ultralytics/cfg/datasets/coco.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 600 --batch 128 --reg_max_sub_one False --use_center_offset False \
#--amp False --layer_wise_assign False --slim_obj_assign True --imgsz 640 --close_layer_wise_assign 1

## train coco regmax sub one + with layer_wise_assign + 20 epochs layer wise assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/coco.yaml  --device "0,1,2,3,4,5,6,7" \
#--save_period 10 --epochs 600 --batch 128 --reg_max_sub_one True --use_center_offset False \
#--amp False --layer_wise_assign True --slim_obj_assign True --imgsz 640 --close_layer_wise_assign 0.2