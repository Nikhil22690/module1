variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR Block"
  default     = "192.168.1.0/24"
}

variable "instance_tenancy" {
  type        = string
  description = "Instance tenancy option for vpc"
  default     = "default"
}

variable "aws_ebs_size" {
  type = number
  description = "Size of the EBS volume in GB" 
  default = 40
  
}

variable "aws_ebs_availability_zone" {
  type = string
  description = "Availability zone for the EBS volume"
  default = "ap-south-1a"
  
}

variable "vpc_id" {
  type = string
  description = "The ID of the VPC"
  default = "vpc-0bb1c79de3EXAMPLE"
  
}
variable "subnet_cidr_block" {
  type        = string
  description = "Subnet CIDR Block"
  default     = "10/0.1.0/25"
}