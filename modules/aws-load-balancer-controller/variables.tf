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