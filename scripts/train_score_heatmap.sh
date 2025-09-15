# train artificial slim obj center offset
# python train.py --model ../ultralytics/cfg/models/11/yolo11l_center_offset.yaml \
# --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" \
# --save_period 10 --epochs 200 --batch 40 --reg_max_sub_one False --use_center_offset True --amp False

## train artificial slim obj regmax sub one fulltime layer_wise_assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" \
#--save_period 10 --epochs 200 --batch 40 --reg_max_sub_one True --use_center_offset False --amp False --layer_wise_assign True --close_layer_wise_assign 1.0


### train artificial slim obj regmax sub one 0.2 time layer_wise_assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" \
#--save_period 10 --epochs 200 --batch 40 --reg_max_sub_one True --use_center_offset False --amp False --layer_wise_assign True --close_layer_wise_assign 0.2

## train artificial slim obj baseline
python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" \
--save_period 10 --epochs 200 --batch 40 --reg_max_sub_one False --use_center_offset False --amp False --layer_wise_assign False


### train artificial slim obj regmax sub one disable layer_wise_assign
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" \
#--save_period 10 --epochs 200 --batch 40 --reg_max_sub_one True --use_center_offset False --amp False --layer_wise_assign False
#


# train yolo11l_baseline artificial slim obj
# python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
# --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" \
# --save_period 10 --epochs 200 --batch 40 --slim_obj_assign False --reg_max_sub_one False --use_center_offset False --layer_wise_assign False

## train yolo11l_center_offset artificial norm obj regmax sub one
#python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
#--data ../ultralytics/cfg/datasets/artifical_norm_obj.yaml  --device "0" \
#--save_period 10 --epochs 200 --batch 40 --reg_max_sub_one True --use_center_offset False --amp False

# train yolo11l_center_offset coco dataset
# python train.py --model ../ultralytics/cfg/models/11/yolo11l_center_offset.yaml \
# --data ../ultralytics/cfg/datasets/coco.yaml  --device "0" \
# --save_period 10 --epochs 600 --batch 100

# resume training
# python train.py --model ../runs/train/weights/epoch100.pt --resume True --data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml  --device "0" --save_period 10 --epochs 200 --batch 40 --amp False

