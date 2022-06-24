#!/bin/bash

set -e
set -x


python train_net.py \
    --config-file ./configs/robot_CenterNet2_DLA-BiFPN-P5_640_16x_ST.yaml \
    --num-gpus 4 OUTPUT_DIR "./output/CenterNet2/coco_robot_DLA-BiFPN-P5_640_16x_ST" \
    SOLVER.IMS_PER_BATCH 32 MODEL.WEIGHTS './weights/CenterNet2_DLA-BiFPN-P5_640_24x_ST.pth' \
    TEST.EVAL_PERIOD 100
