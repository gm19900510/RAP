#!/usr/bin/env bash

GPUID=2
Model_type=trainval # train or trainval
LOG="logs/ResNet50/rap2_${Model_type}_drop0.7.txt.`date +'%Y-%m-%d_%H-%M-%S'`"
GLOG_logtostderr=1 caffe train \
    --solver=./prototxts/ResNet50/rap2_solver_${Model_type}.prototxt \
    --weights=./../pretrained/ResNet-50-model.caffemodel \
    --gpu=${GPUID} 2>&1 | tee ${LOG}
