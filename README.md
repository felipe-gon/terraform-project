<!-- BEGIN_TF_DOCS -->

#  Projeto de Infraestrutura com Terraform na AWS

Este projeto provisiona uma infraestrutura completa na AWS com foco em clusters EKS utilizando Terraform. Tudo organizado em módulos reutilizáveis para facilitar o versionamento e a escalabilidade.

## Tecnologias & Recursos

- AWS EKS (Elastic Kubernetes Service)
- VPC com subnets públicas e privadas
- Bastion Host
- NAT Gateway & Internet Gateway
- IAM Roles + OIDC
- Helm Charts automatizados (Load Balancer Controller)
- Service Account configurada com permissões
- Pre-commit hooks:
    - Formatação (`terraform fmt`)
    - Geração de documentação (`terraform-docs`)


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.92.0 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | 0.100.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 3.0.0-pre2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.36.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_managed_node_group"></a> [eks\_managed\_node\_group](#module\_eks\_managed\_node\_group) | ./modules/managed-node-group | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block to be used for the VPC | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Name of the region to create the resources | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to add to all AWS resources | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->