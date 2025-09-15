 python predictor.py --device "0"  \
 --model ../runs/train_baseline/weights/best.pt   \
 --source /workspace/data/artificial_slim_obj/images/val/ --mode "predict" \
 --name pred_baseline --imgsz 320

#python predictor.py --device "0"  --model ../weights/best.pt  --save True --reg_max_sub_one True --source slender_targets/train2017/ --mode=predict
#python predictor.py --device "0"  --model ../weights/yolo11l.pt  --save True --reg_max_sub_one True --source slender_targets/train2017/  --mode=predict

