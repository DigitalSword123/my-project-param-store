provider "aws" {
    # shared_credentials_file = "$HOME/.aws/credentials"
    # profile = "default"
    region = "ap-south-1"
    access_key = "AKIAZ332BW4JK4JM2BMC"
    secret_key = "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"
}

resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "employee-data-node-terraform-state-bucket-artifacts"
  acl    = "private"
}

resource "aws_ssm_parameter" "parameters" {
  for_each    = var.ssm-infra-key-value-map
  name        = "${var.ssm-path}/${var.env}/${each.key}"
  description = element(each.value, 2)
  type        = element(each.value, 0)
  value       = element(each.value, 1)
  tags        = var.master_tags
  overwrite   =  true
}  


# secret for codebuild
# arn:aws:secretsmanager:ap-south-1:678323926802:secret:codebuild/myproject-wYNmpL
#  Username amiya
# Password Aklm@*6754

#  codepipeline id 26124204
# arn:aws:codestar-connections:ap-south-1:678323926802:connection/d4615afb-0fa1-41d8-b8b4-4acb18b987eb


