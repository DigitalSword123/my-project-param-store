
# tis .tfstate file in s3 bucket will store already provisioned
# infrastrucrures like lambda, bucket which are created previous terraform
# apply command
terraform {
  backend "s3" {
    bucket     = "employee-data-node-terraform-state-bucket"
    encrypt    = false
    key        = "param-store/prod/terraform.tfstate"
    region     = "ap-south-1"
    access_key = "AKIAZ332BW4JK4JM2BMC"
    secret_key = "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"
  }
}

