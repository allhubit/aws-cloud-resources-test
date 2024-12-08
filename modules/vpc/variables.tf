variable "region_name" {
  description = "Region name to launch VPC network"
  type        = string
  default     = "us-east-1"
}


variable "vpc_cidr_block" {
  description = "VPC network CIDR"
  type        = string
  default     = "10.10.0.0/16"
}

variable "environment" {
  description = "Environment name fro deployment"
  type        = string
  default     = "Dev"
}

variable "public_subnets" {
  description = "Provider Public subnets CIDR values"
  type        = list(string)
  default     = ["10.10.0.0/24", "10.10.2.0/24"]
}

variable "private_subnets" {
  description = "Provider Private subnets CIDR values"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.3.0/24"]
}

variable "public_az" {
  description = "AZ names for public subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "private_az" {
  description = "AZ names for private subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}