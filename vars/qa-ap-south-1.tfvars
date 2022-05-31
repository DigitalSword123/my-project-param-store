env="QA"

project="node"

region="ap-south-1"

ssm-path="/project"

ssm-infra-path="project/infra"

ssm-infra-key-value-map={
    "lambda/role" =["SecureString","arn:aws:iam::/project-LambdaExecutionRole","lambda role"]
    "lambda/runtime"=["SecureString","nodejs14.x","lambda runtime"]
    "/private/subnets"=["SecureString","","private subnets"]
    "/vpc/id"=["SecureString","","vpc id"]
    "/principal/ids"=["SecureString","","principal id"]
    "/lambda/runtime/nodeProject"=["SecureString","nodejs14.x","lambda runtime for employee project"]
    "/lambda/memory"=["SecureString","128","lambda memory"]
    "/lambda/timeout"=["SecureString","60","lambda timeout"]
    "/lambda/stateBucket"=["SecureString","","stateBucket"]
}

