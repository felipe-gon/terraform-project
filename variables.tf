variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}
variable "project_name" {
  type        = string
  description = "Name of the project"
}
variable "region" {
  type        = string
  description = "AWS Name of the region to create the resources"
}
variable "tags" {
  type        = map(any)
  description = "Map of tags to add to all AWS resources"
}