variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "The AWS profile to use with this configuration"
  default     = "TerraformUser"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

