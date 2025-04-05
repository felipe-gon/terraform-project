variable "project_name" {
  type        = string
  description = "Name of the project"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added"
}
variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create MNG"
}

variable "subnet_priv_1a" {
  type        = string
  description = "Subnet ID from AZ 1a"
}

variable "subnet_priv_1b" {
  type        = string
  description = "Subnet ID from AZ 1b"
}