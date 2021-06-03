#!/bin/sh -l

set -xe

sh -c "aws configure set region ${aws-region}"
sh -c "aws configure set aws_access_key_id ${aws-access-key-id}"
sh -c "aws configure set aws_secret_access_key ${aws-secret-access-key}"
sh -c "aws eks update-kubeconfig --region ${aws-region} --name ${eks-cluster-name}"

sh -c "$*"
