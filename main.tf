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

data "aws_lambda_function" "source_lambda_name"{
  name= "get-node-employee-data-${var.env}"
}

resource "aws_cloudwatch_event_rule" "employee_data_event" {
  name = "employee-data-lambda-event-rule"
  description = "retry scheduled every 2 min"
  schedule_expression = "rate(2 minutes)"
}

resource "aws_cloudwatch_event_target" "profile_generator_lambda_target" {
  arn = data.source_lambda_name.name.lambda_function_arn
  rule = aws_cloudwatch_event_rule.employee_data_event.name
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_rw_fallout_retry_step_deletion_lambda" {
  statement_id = "AllowExecutionFromCloudWatch"
  action = "lambda:InvokeFunction"
  function_name = data.source_lambda_name.name.lambda_function_arn
  principal = "events.amazonaws.com"
  source_arn = aws_cloudwatch_event_rule.employee_data_event.arn
}
