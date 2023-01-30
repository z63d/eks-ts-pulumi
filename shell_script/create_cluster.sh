#!/bin/bash

# Set cluster name
echo 'Input cluster name. (e.g. with a input like `xxxx`, cluster will be named xxxx-cluster)'
read EKS_CLUSTER_NAME

eksctl create cluster \
    --name "$EKS_CLUSTER_NAME-cluster" \
    --version 1.22 \
    --region ap-northeast-1 \
    --nodegroup-name "$EKS_CLUSTER_NAME-node" \
    --node-type t3.medium \
    --nodes 1 \
    --nodes-min 1 \
    --nodes-max 3 \
    --managed
