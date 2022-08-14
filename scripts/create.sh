#!/usr/bin/env bash

ssh-keygen -f "/root/.ssh/known_hosts" -R "62.84.117.186"

WORK_DIR=/home/devops/diploma

cd $WORK_DIR/diplom_s3_add
terraform init && terraform plan && terraform apply -auto-approve

cd $WORK_DIR/diploma
#terraform init -migrate-state
terraform init -reconfigure
terraform workspace new stage
terraform init && terraform plan && terraform apply -auto-approve
