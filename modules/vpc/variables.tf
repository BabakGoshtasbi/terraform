# variables.tf
variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24"]
}

variable "azs" {
 type        = list(string)
 description = "Availability Zones"
 default     = ["AVZ1", "AVZ2", "AVZ3"]
}











#Babak Old ones 

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
  default     = "TODO"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "TODO"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "TODO"
}

variable "key_name" {
  description = "Name of the SSH key pair for the EC2 instance"
  type        = string
  default     = "TODO"
}

variable "volume_size" {
  description = "Size of the EBS volume in GB"
  type        = number
  default     = 5
}

variable "volume_device" {
  description = "Device name for attaching the EBS volume"
  type        = string
  default     = "TODO"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 2
}