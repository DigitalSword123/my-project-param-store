set -e

set env = "dev"

export env="dev"
export FILE="./vars/dev-ap-south-1.tfvars"

echo $env

echo $(pwd)

cd ./scripts

chmod +x apply.sh


../scripts/apply.sh