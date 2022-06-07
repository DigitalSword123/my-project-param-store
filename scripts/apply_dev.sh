set -e

set env = "dev"

export env="dev"

echo $env

echo $(pwd)

cd ./scripts

chmod +x apply.sh


../scripts/apply.sh