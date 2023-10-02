terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

    backend "s3" {
    bucket = "bucket-terraform4134123"
    key    = "terraform/variable-manage"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key

}


locals {
  nick-name = "nick-name"
}

resource "aws_instance" "pruebas" {
  ami           = "ami-03a6eaae9938c858c" 
  instance_type = "t2.micro"
  tags = {
    nick-name = local.nick-name
  }
}