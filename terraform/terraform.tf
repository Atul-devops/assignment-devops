provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

resource "aws_instance" "windows-instance" {
  ami = "ami-e3a2f79f"

  subnet_id                   = "${var.aws-subnet-id}"
  vpc_security_group_ids      = ["${var.aws-vpc-security-group-id}"]
  instance_type               = "${var.aws-instance-type}"
  key_name                    = "${var.aws-security-key-name}"
  associate_public_ip_address = true
  monitoring                  = true
  user_data                   = "${file("octopusTentacle.ps1")}"

  root_block_device {
    volume_size           = 128
    delete_on_termination = true
  }

  tags {
    Name = "Octopus 3.18 Release Tour"
    OwnerContact = "xyz"
  }

}

variable "aws-subnet-id" {}
variable "aws-vpc-security-group-id" {}
variable "aws-instance-type" {}
variable "aws-security-key-name" {}
  }

}
