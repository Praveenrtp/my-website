provider "aws" {
  region = "us-east-2"
}
terraform {
  backend "s3" {
    bucket  = "mywebsite-tf-state"
    key     = "mywebsite.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManageBy    = "Terraform"
    Owner       = "Praveen Rtp"
  }
}