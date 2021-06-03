#!/bin/sh -l

set -xe

sh -c "aws configure set region ${AWS_REGION}"
sh -c "aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}"
sh -c "aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}"
sh -c "aws eks update-kubeconfig --region ${AWS_REGION} --name ${EKS_CLUSTER_NAME}"

sh -c "$*"
