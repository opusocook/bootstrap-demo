variable "instance_name" {
  description = "AWS Instance Name"
  default     = "Windows1"
}

variable "key_name" {
  description = "Name of the EC2 keypair to use in AWS."
  default     = "Terraform_KeyPair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-2"
}

variable "subnet_id" {
  description = "AWS Subnet launch servers."
  default     = "subnet-5f845324"
}


variable "ami_id" {
  description = "AWS AMI Image Id"
  default     = "ami-9c6b8dfb"
}

variable "instance_type" {
  description = "AWS Instance Size"
  default     = "t2.micro"
}

variable "Parameter1" {
  description = "First Input"
  default = "Folder1"
}

variable "Parameter2" {
  description = "Second Input"
  default = "File2"
}

variable "prod_sg_id" {}