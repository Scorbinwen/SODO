## ===================================================================================================== ##
#python val.py --device "0" --model ../weights/yolo12l.pt  \
#--data ../ultralytics/cfg/datasets/coco.yaml --save_pred_results True --name val_v12_coco
#
#python val.py --device "0" --model ../weights/yolo12l.pt  \
#--data ../ultralytics/cfg/datasets/coco_slim_obj.yaml --save_pred_results True --name val_v12_coco_slim_obj

python val.py --device "0" --model ../weights/yolov13l.pt  \
--data ../ultralytics/cfg/datasets/coco.yaml --save_pred_results True --name val_v13_coco

python val.py --device "0" --model ../weights/yolov13l.pt  \
--data ../ultralytics/cfg/datasets/coco_slim_obj.yaml --save_pred_results True --name val_v13_coco_slim_obj
## ===================================================================================================== ##
