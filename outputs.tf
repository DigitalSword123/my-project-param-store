output "ssm_parametrs" {
  value="${aws_ssm_parameter.*}"
}

output "ssm_map" {
  value= var.ssm-infra-key-value-map
}