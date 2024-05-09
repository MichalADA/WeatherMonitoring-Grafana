variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "172.31.96.0/20"  // Możesz dostosować domyślną wartość
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-east-1a"  // Upewnij się, że ta strefa jest dostępna w Twoim regionie
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "MyProject"
}

