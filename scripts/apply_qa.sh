set -e

set env = "qa"

export env="qa"
export FILE="qa-ap-south-1.tfvars"
echo $env

echo $(pwd)
cd ./scripts
chmod +x apply.sh


../scripts/apply.sh