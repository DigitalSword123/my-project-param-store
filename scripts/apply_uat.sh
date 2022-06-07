set -e


set env = "uat"

export env

cd ./scripts

chmod +x apply.sh

../scripts/apply.sh