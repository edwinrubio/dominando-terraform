terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

    backend "s3" {
    bucket = "bucket-terraform4134123"
    key    = "terraform/functions"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key

}


# Creación de instancias EC2 utilizando for_each
resource "aws_instance" "instancias" {
  for_each = var.nombres

  ami           = "ami-03a6eaae9938c858c" # AMI de Amazon Linux 2
  instance_type = "t2.micro"

  tags = {
    Name = upper(each.key) # Convertir el nombre a mayúsculas

  }
}
