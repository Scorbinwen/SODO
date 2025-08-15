## ==================================== v11 Model Train ==================================== ##
### v11 Train Pole Detection   baseline
python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
--data ../ultralytics/cfg/datasets/pole_detection.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v11_pole_detection_baseline"

### v11 Train Pole Detection reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
--data ../ultralytics/cfg/datasets/pole_detection.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v11_pole_detection_direct_dist"

### v11 Train tans   baseline
python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
--data ../ultralytics/cfg/datasets/tans.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v11_tans_baseline"

### v11 Train tans reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
--data ../ultralytics/cfg/datasets/tans.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v11_tans_direct_dist"

### v11 Train combobox   baseline
python train.py --model ../ultralytics/cfg/models/11/yolo11l.yaml \
--data ../ultralytics/cfg/datasets/combobox.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v11_combobox_baseline"

### v11 Train combobox reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/11/yolo11l_regmax.yaml \
--data ../ultralytics/cfg/datasets/combobox.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v11_combobox_direct_dist"
## ==================================== v11 Model Train ==================================== ##

## ==================================== v12 Model Train ==================================== ##
### v12 Train Pole Detection   baseline
python train.py --model ../ultralytics/cfg/models/12/yolo12l.yaml \
--data ../ultralytics/cfg/datasets/pole_detection.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v12_pole_detection_baseline"

### v12 Train Pole Detection reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/12/yolo12l_regmax.yaml \
--data ../ultralytics/cfg/datasets/pole_detection.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v12_pole_detection_direct_dist"

### v12 Train tans   baseline
python train.py --model ../ultralytics/cfg/models/12/yolo12l.yaml \
--data ../ultralytics/cfg/datasets/tans.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v12_tans_baseline"

### v12 Train tans reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/12/yolo12l_regmax.yaml \
--data ../ultralytics/cfg/datasets/tans.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v12_tans_direct_dist"

### v12 Train combobox   baseline
python train.py --model ../ultralytics/cfg/models/12/yolo12l.yaml \
--data ../ultralytics/cfg/datasets/combobox.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v12_combobox_baseline"

### v12 Train combobox reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/12/yolo12l_regmax.yaml \
--data ../ultralytics/cfg/datasets/combobox.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v12_combobox_direct_dist"
## ==================================== v12 Model Train ==================================== ##

## ==================================== v13 Model Train ==================================== ##
### v13 Train Pole Detection   baseline
python train.py --model ../ultralytics/cfg/models/v13/yolov13l.yaml \
--data ../ultralytics/cfg/datasets/pole_detection.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v13_pole_detection_baseline"

### v13 Train Pole Detection reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/v13/yolov13l_regmax.yaml \
--data ../ultralytics/cfg/datasets/pole_detection.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v13_pole_detection_direct_dist"

### v13 Train tans   baseline
python train.py --model ../ultralytics/cfg/models/v13/yolov13l.yaml \
--data ../ultralytics/cfg/datasets/tans.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v13_tans_baseline"

### v13 Train tans reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/v13/yolov13l_regmax.yaml \
--data ../ultralytics/cfg/datasets/tans.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v13_tans_direct_dist"

### v13 Train combobox   baseline
python train.py --model ../ultralytics/cfg/models/v13/yolov13l.yaml \
--data ../ultralytics/cfg/datasets/combobox.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one False --use_center_offset False \
--amp True --layer_wise_assign False --slim_obj_assign False --imgsz 640 --name "train_v13_combobox_baseline"

### v13 Train combobox reg_max_sub_one True
python train.py --model ../ultralytics/cfg/models/v13/yolov13l_regmax.yaml \
--data ../ultralytics/cfg/datasets/combobox.yaml  --device "0,1,2,3,4,5,6,7" \
--save_period 10 --epochs 200 --batch 128 --reg_max_sub_one True --use_center_offset False \
--amp True --layer_wise_assign True --slim_obj_assign True --close_layer_wise_assign 0.2 --imgsz 640 --name "train_v13_combobox_direct_dist"
## ==================================== v13 Model Train ==================================== ##
