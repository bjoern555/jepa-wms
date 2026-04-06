#!/bin/bash

USER_NAME=$(whoami)
LOG_DIR="/cluster/home/${USER_NAME}/temp/jepa_wms/train"
mkdir -p "$LOG_DIR"

sbatch --output="${LOG_DIR}/%j_%N.out" \
       --error="${LOG_DIR}/%j_%N.err" \
       train.submit "$@"
