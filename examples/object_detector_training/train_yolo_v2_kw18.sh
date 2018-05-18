#!/bin/sh

# Setup VIAME Paths (no need to run multiple times if you already ran it)

export VIAME_INSTALL=./../..

source ${VIAME_INSTALL}/setup_viame.sh 

# Run pipeline

viame_train_detector \
  -i training_data \
  -c ${VIAME_INSTALL}/configs/pipelines/train_yolo_v2_high_res_kw18.conf
