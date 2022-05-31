provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
      bucket = "employee-data-node-terraform-state-bucket"
      encrypt = false
      key = "terraform.tfstate"
      region = "ap-south-1"
  }
}

