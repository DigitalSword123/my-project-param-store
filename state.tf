
# tis .tfstate file in s3 bucket will store already provisioned
# infrastrucrures like lambda, bucket which are created previous terraform
# apply command
terraform {
  backend "s3" {
    bucket     = "employee-data-node-terraform-state-bucket"
    encrypt    = false
    key        = "param-store/dev/terraform.tfstate"
    region     = "ap-south-1"
  }
}

