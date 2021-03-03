# Gloo API Infrastructure Platform Reference Architecture for AWS

## Goals

* Provision multiple EKS clusters across multiple AWS regions
  * VPCs with public/private subnets
  * Security groups
  * ELBs
* Install Gloo Edge, Gloo Portal, Gloo Mesh, and Istio into EKS
  * Configure mTLS for Gloo Edge and Istio
  * Configure Gloo Mesh Istio clusters
  * Configure Gloo Edge Federation clusters
  *



```
aws configure
```


```
terraform init

terraform plan
terraform apply
```

```
# grab our EKS config
aws eks update-kubeconfig --name getting-started-eks --region ap-southeast-2

# Get kubectl

kubectl get nodes
kubectl get deploy
kubectl get pods
kubectl get svc
```


## Credits

* https://www.youtube.com/watch?v=Qy2A_yJH5-o
* https://github.com/marcel-dempers/docker-development-youtube-series/tree/master/kubernetes/cloud/amazon/terraform
* https://github.com/hashicorp/terraform-provider-helm/issues/400
