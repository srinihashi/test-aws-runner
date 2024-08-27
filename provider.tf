terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.47.0"
      version = "5.53.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" 
}
