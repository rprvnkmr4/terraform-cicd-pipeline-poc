variable "ec2_region" {
  default = "es-east-1"
}

variable "ec2_image" {
  default = "ami-08d4ac5b634553e16"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "ec2_keypair" {
  default = "terraform-cicd"
}

variable "ec2_tags" {
  default = "aws-terraform-cicd-poc"
}

variable "ec2_count" {
  default = "1"
}