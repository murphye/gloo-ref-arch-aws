# Gloo API Infrastructure Platform Reference Architecture for AWS

## Goals

* Provision multiple EKS clusters across multiple AWS regions
  * VPCs with public/private subnets
  * Security groups
  * ELBs
* Install Gloo Edge, Gloo Portal, Gloo Mesh, and Istio into EKS
  * EE versions of Gloo only
  * Configure mTLS for Gloo Edge and Istio
  * Configure Gloo Mesh Istio clusters
  * Configure Gloo Edge Federation clusters
  * Configure Datadog for Envoy and Istio

## Ref Arch Development Milestones

## Part 1: Infrastucture and Gloo Installations

- [ ] Create DNS entries
- [ ] Provision single cluster EKS, VCP, ELB with Terraform (TF)
- [ ] TF Helm install of Gloo Edge
- [ ] TF Helm install of Gloo Portal
- [ ] TF Helm install of Istio
- [ ] Gloo Edge + Istio mTLS integration
- [ ] Install Datadog for EKS, Envoy
- [ ] Install Datadog for Istio
- [ ] Install Argo CD
- [ ] Provision multi-cluster, multi-region EKS + Edge/Portal/Istio/Argo/Datadog
- [ ] Provision EKS Gloo Management cluster
- [ ] TF Helm install of Gloo Edge Federation to Gloo Management cluster
- [ ] Register Gloo Edge clusters (`glooctl`)
- [ ] Configure Gloo Edge service failover gateway
- [ ] TF Helm install of Gloo Mesh to Gloo Management cluster
- [ ] Register Gloo Mesh clusters (`meshctl`)
- [ ] Configure Gloo Mesh traffic policy
- [ ] Configure shared root CA for a share identity domain in Gloo Mesh
- [ ]


## Part 2: Demo Application(s) Installations

- [ ] TODO

# Part 3: Platform Features

- [ ] Gloo Edge service failover
- [ ] Gloo Mesh multi-cluster traffic
- [ ] Gloo Mesh service failover
- [ ] Deploy custom Gloo Portal configuration

## Instructions

### Set Environment Variables

```
TODO:
Gloo Enterprise Keys
Route53 domain name
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
