terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.92.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.36.0"
    }
  }
  backend "s3" {
    bucket = "projetotf"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = "us-east-1"
}
provider "kubernetes" {
  host                   = module.eks_cluster.certificate_endpoint
  cluster_ca_certificate = base64decode(module.eks_cluster.certificate_auth)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.eks_cluster.cluster_name]
    command     = "aws"
  }
}