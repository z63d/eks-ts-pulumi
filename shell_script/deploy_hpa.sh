#!/bin/bash

# Kubernetes Metrics Server
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.5.0/components.yaml

# Horizontal Pod Autoscaler
kubectl apply -f manifest/nginx-hpa.yaml
