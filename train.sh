rm data/cache/*.pkl
##### VGG16
./tools/train_net.py --gpu 0 \
 --solver models/pascal_voc/VGG16/faster_rcnn_end2end/solver.prototxt  \
 --weights data/faster_rcnn_models/VGG16_faster_rcnn_final.caffemodel \
 --imdb inria_train \
 --cfg experiments/cfgs/faster_rcnn_end2end.yml \
 2>&1 | tee logfile/train.log

##### ZF
#./tools/train_net.py --gpu 0 --iters 124000  --solver models/pascal_voc/ZF/faster_rcnn_end2end/solver.prototxt     --weights output/faster_rcnn_end2end/train/zf_faster_rcnn_iter_105000.caffemodel --imdb inria_train --cfg experiments/cfgs/faster_rcnn_end2end.yml 2>&1 | tee logfile/train_rankpooling_rot.log

 ## train from imagenet pre-trained
#./tools/train_net.py --gpu 0 \
# --iters 248000  \
# --solver models/pascal_voc/ZF/faster_rcnn_end2end/solver.prototxt   \
# --weights data/faster_rcnn_models/ZF_faster_rcnn_final.caffemodel \
# --imdb inria_train \
# --cfg experiments/cfgs/faster_rcnn_end2end.yml
 #2>&1 | tee logfile/train_rankpooling.log
# original pre-trained: /home/closerbibi/bin/faster-rcnn/data/faster_rcnn_models/ZF_faster_rcnn_final.caffemodel

#### ZF no pretrained model
#./tools/train_net.py --gpu 0 --iters 124000  --solver models/pascal_voc/ZF/faster_rcnn_end2end/solver.prototxt  --imdb inria_train --cfg experiments/cfgs/faster_rcnn_end2end.yml 2>&1 | tee logfile/train_rankpooling.log

#51390
#./tools/train_net.py --gpu 0 --solver models/pascal_voc/ZF/faster_rcnn_end2end/solver.prototxt --imdb inria_train --cfg experiments/cfgs/faster_rcnn_end2end.yml 2>&1 | tee logfile/train.log
