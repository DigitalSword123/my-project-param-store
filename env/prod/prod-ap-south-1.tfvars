env = "prod"

project = "node"

region = "ap-south-1"

ssm-path = "/project"

ssm-infra-path = "project/infra"

ssm-infra-key-value-map = {
  "lambda/role"                = ["String", "arn:aws:iam::/project-LambdaExecutionRole", "lambda role"]
  "lambda/runtime"             = ["String", "nodejs14.x", "lambda runtime"]
  "private/subnets"            = ["String", "", "private subnets"]
  "vpc/id"                     = ["String", "", "vpc id"]
  "principal/ids"              = ["String", "", "principal id"]
  "lambda/runtime/nodeProject" = ["String", "nodejs14.x", "lambda runtime for employee project"]
  "lambda/memory"              = ["String", "128", "lambda memory"]
  "lambda/timeout"             = ["String", "60", "lambda timeout"]
  "lambda/stateBucket"         = ["String", "", "stateBucket"]
}

