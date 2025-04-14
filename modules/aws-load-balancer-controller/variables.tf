variable "project_name" {
  type        = string
  description = "Name of the project"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added"
}
variable "oidc" {
  type        = string
  description = "HTTPS URL from OIDC provider of the EKS CLuster"
}
variable "cluster_name" {
  type        = string
  description = "EKS CLuster name"
}
variable "vpc_id" {
  type        = string
  description = "VPC ID"
}