terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

backend "s3" {
  bucket = "terra-created-bucket"
  key    = "terraform.tfstate"
  region = "us-east-2"
  # Disable dynamodb_table for S3 backend only (optional)
  # dynamodb_table = "my-terraform-table"
}

provider "aws" {
  # access_key = "AKIA3FLD5C5NWW2KLUUS" # Replace with your actual access key (placeholder)
  # secret_key = "RKk0KXLmrJWlNPgjzNNvQ6ZndxmFiiG1UsCi07Tq" # Replace with your actual secret key (placeholder)
  region    = "us-east-2"
}

