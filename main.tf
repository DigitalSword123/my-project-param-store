terraform {
  backend "s3" {}
}

resource "aws_ssm_parameter" "parameters" {
  for_each = "${var.ssm-infra-key-value-map}"
  name="${var.ssm-path}/${var.env}/${each.key}"
  description = "${element(each.value,2)}"
  type="${element(each.value,0)}"
  value="${element(each.value,1)}"
  tags="${var.master_tags}"
}