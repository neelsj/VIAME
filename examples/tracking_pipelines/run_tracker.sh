#!/bin/sh

# Setup VIAME Paths (no need to run multiple times if you already ran it)

source ../../setup_viame.sh 

# Run pipeline

pipeline_runner -p yolo_v2_detector.pipe
