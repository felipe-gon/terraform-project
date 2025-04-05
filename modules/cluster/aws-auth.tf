resource "kubernetes_config_map" "aws_auth" {
  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }

  data = {
    mapUsers = <<YAML
- userarn: arn:aws:iam::225989362076:user/tf-admin
  username: tf-admin
  groups:
    - system:masters
YAML
  }

  depends_on = [aws_eks_cluster.eks_cluster]
}