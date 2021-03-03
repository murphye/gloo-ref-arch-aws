provider "aws" {
  region = "us-east-1"
}

data "aws_eks_cluster_auth" "cluster-auth" {
  depends_on = [aws_eks_cluster.my_cluster]
  name       = aws_eks_cluster.my_cluster.name
}

provider "helm" {
  alias = "my_cluster"
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
    token                  = data.aws_eks_cluster_auth.cluster.token
  }
}

resource "helm_release" "testchart" {
  provider  = helm.my_cluster
  name       = "testchart"
  chart      = "../../../resources/testchart"
  namespace  = "default"
}
