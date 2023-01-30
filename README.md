※ Working with project root directory  

## init  

### create cluster  
$ eksctl create cluster -f manifest/cluster-config.yaml  

$ find shell_script/ -type f -print | xargs chmod +x  

### deploy Dashboard  
$ ./shell_script/deploy_dashboard.sh  

### deploy AWS Load Balancer Controller  
$ ./shell_script/deploy_aws_load_balancer_controller.sh  

### deploy Horizontal Pod Autoscaler  
$ ./shell_script/deploy_hpa.sh  

### deploy Kubernetes Autoscaler  
$ ./shell_script/deploy_cluster_autoscaler.sh  

### deploy Container Insights  
$ ./shell_script/deploy_container_insights.sh  

$ pulumi up  

### access Dashboard  
$ ./shell_script/access_dashboard.sh  
