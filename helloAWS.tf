/* terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
} 

variable "aws_access_key" {
  description = "The AWS API key needed to deploy resources"
}

variable "aws_secret_key" {
  description = "The AWS API key needed to deploy resources"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key  
}

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
*/
