env = "prod"

project = "node"

region = "ap-south-1"

ssm-path = "/project"

ssm-infra-path = "project/infra"

ssm-infra-key-value-map = {
  "lambda/role"                                         = ["String", "arn:aws:iam::678323926802:role/Lambda-nodejs-executionrole", "lambda role"]
  "lambda/runtime"                                      = ["SecureString", "nodejs14.x", "lambda runtime"]
  "private/subnets"                                     = ["String", "subnet-0c14e9c0fe63b3a69,subnet-0930e143f6943384d,subnet-06234b18eb06fc83a", "private subnets"]
  "vpc/id"                                              = ["String", "vpc-05b050daa09deb4d0", "vpc id"]
  "principal/ids"                                       = ["String", "678323926802", "principal id"]
  "lambda/runtime/nodeProject"                          = ["String", "nodejs14.x", "lambda runtime for employee project"]
  "lambda/memory"                                       = ["SecureString", "128", "lambda memory"]
  "lambda/timeout"                                      = ["SecureString", "60", "lambda timeout"]
  "lambda/stateBucket"                                  = ["String", "employee-data-node-terraform-state-bucket", "stateBucket"]
  "ssh/ips"                                             = ["String", "10.0.0.0/8", "ssh ips"]
  "678323926802/iam/lambda-execution-role-arn" = ["String", "arn:aws:iam::678323926802:role/Lambda-nodejs-executionrole", "lambda role"]
}

