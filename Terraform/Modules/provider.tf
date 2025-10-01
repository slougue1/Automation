provider "aws" {
  region     = "<>"
  access_key = "<>"
  secret_key = "<>"
}

#Lock terraform.tfstate in dynamodb
terraform {
  backend "s3" {
    bucket         = "<>"
    key            = "terraform.tfstate"
    region         = "<>"
    dynamodb_table = "<>"
    encrypt        = true
  }
}
#Without this block it doesn't restrict the version of provider to 6.11.0. It will be the  latest version
# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "6.11.0"
#     }
#   }
# }
