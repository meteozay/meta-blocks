#!/usr/bin/env bash

NUM_CLASSES=5
DATASET=omniglot
DATA_DIR=/media/storage/data/$DATASET

CUDA_VISIBLE_DEVICES=1 \
python -u -m active_metal.run \
  experiment=${DATASET}/${NUM_CLASSES}way/unsupervised/umtra \
  evaluation=${DATASET}/${NUM_CLASSES}way \
  dataset=$DATASET \
  adaptation=maml \
  data.read_config.data_dir=${DATA_DIR}