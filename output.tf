output "oidc" {
  value = module.eks_cluster.oidc
}

output "ca" {
  value = module.eks_cluster.certificate_auth
}

output "endpoint" {
  value = module.eks_cluster.certificate_endpoint
}