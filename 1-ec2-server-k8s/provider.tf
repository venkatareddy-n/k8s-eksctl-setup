terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket         = "venkat-91"
    key            = "k8-eksctl-ec2"
    region         = "us-east-1"
    dynamodb_table = "venkat-db"
  }
}

provider "aws" {
  region = "us-east-1"
}