variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "The AWS profile to use with this configuration"
  default     = "TerraformUser"
}
