set -e

set env = "uat"

export env="uat"
export FILE="./vars/uat-ap-south-1.tfvars"
echo $env

echo $(pwd)

cd ./scripts

chmod +x apply.sh


../scripts/apply.sh