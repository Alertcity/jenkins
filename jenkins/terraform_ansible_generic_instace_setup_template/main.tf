terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }

  required_version = ">= 1.3"
   backend "s3" {
     bucket = "my-jenkins-bucket-nadir"
     key    = "nodejsapp_example/terraform.tfstate"
     region = "us-east-1"
   }
}

provider "aws" {
  region     = "us-east-1"
}