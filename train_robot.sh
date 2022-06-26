#!/bin/bash

set -e
set -x


python train_net.py \
    --config-file ./configs/robot_CenterNet2_DLA-BiFPN-P5_640_16x_ST.yaml \
    --num-gpus 4 --eval-only OUTPUT_DIR "./output/CenterNet2/coco_robot_DLA-BiFPN-P5_640_16x_ST" \
    SOLVER.IMS_PER_BATCH 32 MODEL.WEIGHTS './output/CenterNet2/coco_robot_DLA-BiFPN-P5_640_16x_ST/model_final.pth' \
    TEST.EVAL_PERIOD 100
