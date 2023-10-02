terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform63456456"
    key    = "terraform/basic-tasks"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""

}


resource "aws_instance" "pruebas" {
  ami           = "ami-03a6eaae9938c858c" // aws linux
  instance_type = "t2.micro"

}
