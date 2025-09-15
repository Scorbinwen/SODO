#python val.py --device "0" --model ../runs/train_slim_obj/fulltime.pt  \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml --save_pred_results True --name val_fulltime
#
#python val.py --device "0" --model ../runs/train_slim_obj/50epoch.pt  \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml --save_pred_results True --name val_50epoch
#
#python val.py --device "0" --model ../runs/train_slim_obj/20epoch.pt  \
#--data ../ultralytics/cfg/datasets/artifical_slim_obj.yaml --save_pred_results True --name val_20epoch


python val.py --device "0" --model ../runs/train_v11_pole_detection_baseline/weights/best.pt  \
--data ../ultralytics/cfg/datasets/pole_detection.yaml --save_pred_results True --name val_v11_pole_detection_baseline

python val.py --device "0" --model ../runs/train_v11_pole_detection_direct_dist/weights/best.pt  \
--data ../ultralytics/cfg/datasets/pole_detection.yaml --save_pred_results True --name val_v11_pole_detection_direct_dist

python val.py --device "0" --model ../runs/train_v11_tans_baseline/weights/best.pt  \
--data ../ultralytics/cfg/datasets/tans.yaml --save_pred_results True --name val_v11_tans_baseline

python val.py --device "0" --model ../runs/train_v11_tans_direct_dist/weights/best.pt  \
--data ../ultralytics/cfg/datasets/tans.yaml --save_pred_results True --name val_v11_tans_direct_dist

python val.py --device "0" --model ../runs/train_v11_combobox_baseline/weights/best.pt  \
--data ../ultralytics/cfg/datasets/combobox.yaml --save_pred_results True --name val_v11_combobox_baseline

python val.py --device "0" --model ../runs/train_v11_combobox_direct_dist/weights/best.pt  \
--data ../ultralytics/cfg/datasets/combobox.yaml --save_pred_results True --name val_v11_combobox_direct_dist

## ===================================================================================================== ##
#
#python val.py --device "0" --model ../runs/train_v12_pole_detection_baseline/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/pole_detection.yaml --save_pred_results True --name val_v12_pole_detection_baseline
#
#python val.py --device "0" --model ../runs/train_v12_pole_detection_direct_dist/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/pole_detection.yaml --save_pred_results True --name val_v12_pole_detection_direct_dist
#
#python val.py --device "0" --model ../runs/train_v12_tans_baseline/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/tans.yaml --save_pred_results True --name val_v12_tans_baseline
#
#python val.py --device "0" --model ../runs/train_v12_tans_direct_dist/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/tans.yaml --save_pred_results True --name val_v12_tans_direct_dist
#
#
#python val.py --device "0" --model ../runs/train_v12_combobox_baseline/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/combobox.yaml --save_pred_results True --name val_v12_combobox_baseline
#
#python val.py --device "0" --model ../runs/train_v12_combobox_direct_dist/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/combobox.yaml --save_pred_results True --name val_v12_combobox_direct_dist
#
### ===================================================================================================== ##
#
#python val.py --device "0" --model ../runs/train_v13_pole_detection_baseline/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/pole_detection.yaml --save_pred_results True --name val_v13_pole_detection_baseline
#
#python val.py --device "0" --model ../runs/train_v13_pole_detection_direct_dist/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/pole_detection.yaml --save_pred_results True --name val_v13_pole_detection_direct_dist
#
#python val.py --device "0" --model ../runs/train_v13_tans_baseline/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/tans.yaml --save_pred_results True --name val_v13_tans_baseline
#
#python val.py --device "0" --model ../runs/train_v13_tans_direct_dist/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/tans.yaml --save_pred_results True --name val_v13_tans_direct_dist
#
#python val.py --device "0" --model ../runs/train_v13_combobox_baseline/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/combobox.yaml --save_pred_results True --name val_v13_combobox_baseline
#
#python val.py --device "0" --model ../runs/train_v13_combobox_direct_dist/weights/best.pt  \
#--data ../ultralytics/cfg/datasets/combobox.yaml --save_pred_results True --name val_v13_combobox_direct_dist
#
### ===================================================================================================== ##