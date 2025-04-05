variable "project_name" {
  type        = string
  description = "Name of the project"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added"
}
variable "public_subnet_1a" {
  type        = string
  description = "Subnet to create EKs Cluster AZ 1A"
}
variable "public_subnet_1b" {
  type        = string
  description = "Subnet to create EKs Cluster AZ 1B"
}