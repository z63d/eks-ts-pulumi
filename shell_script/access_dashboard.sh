#!/bin/bash

kubectl -n kubernetes-dashboard create token admin-user
echo http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
kubectl proxy
