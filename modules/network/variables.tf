variable "cidr_block" {
  type        = string
  description = "Networking CIDR Block to be used for VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used for the resources (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}