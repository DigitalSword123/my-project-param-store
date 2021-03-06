set -e

set env = "dev"


ls -al

echo $(pwd)

echo ${TARGET_ENV_DEV}

export VAR_FILE=vars/${TARGET_ENV_DEV}-ap-south-1.tfvars

# export VAR_FILE=$PATH:/vars/dev-ap-south-1.tfvars

echo "${VAR_FILE}"


terraform init \
 -backend-config="key=param-store/${TARGET_ENV_DEV}/terraform.tfstate" \
 -backend-config="access_key=${AWS_ACCESS_KEY}" \
 -backend-config="secret_key=${AWS_SECRET_KEY}"



terraform plan -var-file="${VAR_FILE}" -out=plan.tfplan

terraform apply "plan.tfplan"
