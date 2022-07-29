provider "aws" {
  region     = "ap-south-1"
}

# resource "aws_s3_bucket" "codepipeline_artifacts" {
#   bucket = "node-terraform-state-bucket-artifacts"
#   acl    = "private"

#   versioning {
#     enabled = true
#   }

#   lifecycle {
#     prevent_destroy = true
#   }
# }

resource "aws_ssm_parameter" "parameters" {
  for_each    = var.ssm-infra-key-value-map
  name        = "${var.ssm-path}/${lower(var.env)}/${each.key}"
  description = element(each.value, 2)
  type        = element(each.value, 0)
  value       = element(each.value, 1)
  tags        = var.master_tags
  overwrite   =  true
}