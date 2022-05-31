output "ssm_parametrs" {
  value="${aws_ssm_parameter.parameters.*}"
  sensitive = true
}

output "ssm_map" {
  value= var.ssm-infra-key-value-map
  sensitive = true
}