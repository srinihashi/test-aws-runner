# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    organization = "srini-hashi"
    workspaces {
      name = "sg-test"
     }
   }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
 }

provider "aws" {
  region = "us-east-1"
}

#     # An example resource that does nothing.
#     resource "null_resource" "example" {
#       triggers = {
#         value = "A example resource that does nothing!"
#       }
#     }
// Made upate to trigger pipeline
resource "aws_instance" "ec2" {
  ami = "ami-0fee185d37202108d"
  instance_type = "t2.micro"
  key_name = "aws-ssh-key"
  security_groups = ["ssh-from-my-mac"]

  tags = {
    Name = "EC2-FROM-AWS-RUNNER"
  }
}
