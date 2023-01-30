#!/bin/bash

kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.5.4/cert-manager.yaml

#sed -i "" "s/your-clustername/${clustername}/" manifest/v2_4_6_full.yaml

# Wait for Running cert-manager
sleep 20

kubectl apply -f manifest/v2_4_6_full.yaml
