#!/bin/bash

set -e
set -x


python train_net.py \
    --config-file ./configs/VOC2007_CenterNet2_DLA-BiFPN-P5_640_16x_ST.yaml \
    --num-gpus 4 OUTPUT_DIR "./output/CenterNet2/VOC2007_CenterNet2_b4" \
    SOLVER.IMS_PER_BATCH 4 \
    TEST.EVAL_PERIOD 1000
