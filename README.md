# Gloo API Infrastructure Platform Reference Architecture for AWS

This is a *work-in-progress* reference architecture to deploy the entire Gloo API Infrastructure Platform on AWS EKS. Primary components are Gloo Edge, Gloo Portal, Istio, and Gloo Mesh.

## Reference Architecture Highlights

* Demonstrate how all of the Gloo components work together for an enterprise use case
* GitOps-first approach with Argo CD to deploy applications and configurations, including configurations for Gloo and Istio
* Integration with an enterprise monitoring solution (Datadog)
* API design, development, and management approach using Git (Stoplight Studio)
* Multi-cluster and multi-region traffic routing and service failover using both Gloo Edge and Gloo Mesh
* Demonstrate Gloo integrations with AWS

## Reference Architecture Development Tasks

### Part 1: Define Enterprise Use Case

- [ ] Technology challenges
- [ ] Business challenges
- [ ] APIs
- [ ] Applications

### Part 2: Automated Installation of Gloo Platform Components on EKS

- [ ] Create domain and DNS entries in Route 53
- [ ] Generate required certificates from ACM
- [ ] Provision single cluster EKS, VCP, ELB with Terraform (TF)
- [ ] TF Helm install of Gloo Edge
- [ ] TF Helm install of Gloo Portal
- [ ] TF Helm install of Istio
- [ ] Gloo Edge + Istio mTLS integration
- [ ] Install Datadog for EKS, Envoy
- [ ] Install Datadog for Istio
- [ ] Install Argo CD

### Part 3: Automated Installation of Multi-Cluster, Multi-Region Gloo Platform

- [ ] Provision multi-cluster, multi-region EKS + Edge/Portal/Istio/Argo/Datadog
- [ ] Provision EKS Gloo Management cluster
- [ ] TF Helm install of Gloo Edge Federation to Gloo Management cluster
- [ ] Register Gloo Edge clusters
- [ ] Configure Gloo Edge service failover gateway
- [ ] TF Helm install of Gloo Mesh to Gloo Management cluster
- [ ] Register Gloo Mesh clusters
- [ ] Configure Gloo Mesh traffic policy
- [ ] Configure shared root CA for a share identity domain in Gloo Mesh
- [ ] Provision and deploy tiered system architecture (i.e. Web and Service) by using separate EKS clusters

### Part 4: Automated Deployment of Demo Applications

- [ ] Deploy applications to EKS using Argo
- [ ] Provision EC2 instance for legacy application
- [ ] Deploy legacy application to EC2 instance
- [ ] Deploy Lamba application

### Part 5: Automated Configuration of Platform Features

- [ ] Configure Gloo Edge service failover
- [ ] Configure Gloo Mesh multi-cluster traffic
- [ ] Configure Gloo Mesh service failover
- [ ] Configure custom Gloo Portal

### Part 6: OpenAPI Design and Development Approach

- [ ] TODO

## Instructions

### Set Environment Variables

```
TODO:
Gloo Enterprise Keys
Route 53 domain name
```


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

## References

### Gloo Edge

1. https://docs.solo.io/gloo-edge/latest/installation/enterprise/
1. https://docs.solo.io/gloo-edge/latest/installation/gloo_federation/
1. https://docs.solo.io/gloo-edge/latest/guides/gloo_federation/service_failover/
1. https://docs.solo.io/gloo-edge/latest/installation/advanced_configuration/extauth_custom_ca/
1. https://docs.solo.io/gloo-edge/latest/installation/gateway/kubernetes/helm_advanced/
1. https://docs.solo.io/gloo-edge/latest/installation/platform_configuration/cluster_setup/#amazon-elastic-container-service-for-kubernetes-eks
1. https://docs.solo.io/gloo-edge/latest/guides/integrations/service_mesh/gloo_istio_mtls/
1. https://docs.solo.io/gloo-edge/latest/guides/integrations/datadog/

### Istio

1. https://istio.io/latest/docs/setup/install/helm/
1. https://docs.solo.io/gloo-mesh/latest/guides/installing_istio/
1. https://docs.solo.io/gloo-mesh/latest/operations/customize_dns/
1. https://www.datadoghq.com/blog/istio-datadog/

### Gloo Mesh

1. https://docs.solo.io/gloo-mesh/latest/setup/install_gloo_mesh/
1. https://docs.solo.io/gloo-mesh/latest/setup/register_cluster/
1. https://docs.solo.io/gloo-mesh/latest/guides/federate_identity/
1. https://docs.solo.io/gloo-mesh/latest/guides/multicluster_communication/
1. https://docs.solo.io/gloo-mesh/latest/guides/failover_service_guide/


### Gloo Portal

1. https://docs.solo.io/gloo-portal/latest/setup/gloo/
1. https://docs.solo.io/gloo-portal/latest/setup/istio/

### Argo CD

1. https://argo-cd.readthedocs.io/en/stable/getting_started/#1-install-argo-cd


## Credits

1. https://www.youtube.com/watch?v=Qy2A_yJH5-o
1. https://github.com/marcel-dempers/docker-development-youtube-series/tree/master/kubernetes/cloud/amazon/terraform
1. https://github.com/hashicorp/terraform-provider-helm/issues/400
