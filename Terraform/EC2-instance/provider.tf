terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.11.0"
    }
  }
}

provider "aws" {
  # Configuration tells us where to create resources
  region = "<REGION USED WHEN RUNNING AWS CONFIGURE>"
  access_key = "<ADD ACCESS_KEY, PREFERABLY IAM USER>"
  secret_key = "<ADD SECRET KEY>"
}
