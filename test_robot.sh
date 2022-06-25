#!/bin/bash

set -e
set -x


python demo.py \
    --config-file ./configs/robot_CenterNet2_DLA-BiFPN-P5_640_16x_ST.yaml \
    --input './input/' --output './output/test.avi' \

