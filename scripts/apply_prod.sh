set -e

set env = "prod"

export env="prod"
export FILE="./vars/prod-ap-south-1.tfvars"

echo $env

echo $(pwd)

cd ./scripts

chmod +x apply.sh


../scripts/apply.sh