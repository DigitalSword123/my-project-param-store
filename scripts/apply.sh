echo $env

echo $(pwd)

cd ../env/${env}

echo $(pwd)

terraform init
terraform plan

terraform apply -auto-approve