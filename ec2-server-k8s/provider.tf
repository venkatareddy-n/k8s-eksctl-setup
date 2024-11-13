terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "venkatswan"
    key    = "k8-eksctl-ec2"
    region = "us-east-1"
    dynamodb_table = "venkat-db"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}