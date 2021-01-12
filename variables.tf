variable "access_key" {
    description = "The AWS access key."
    default = ""
}

variable "secret_key" {
    description = "The AWS secret key."
    default = ""
}

variable "region" {
    description = "The AWS region to create resources in."
    default = ""
}


variable "aws-subnet-id" {}
variable "aws-vpc-security-group-id" {}
variable "aws-instance-type" {}
variable "aws-security-key-name" {}
