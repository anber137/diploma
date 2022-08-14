#!/usr/bin/env bash

WORK_DIR=/home/devops/diploma
cd $WORK_DIR/diploma
terraform destroy -auto-approve

cd $WORK_DIR/diploma_s3_add
terraform destroy -auto-approve

