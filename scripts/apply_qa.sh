set -e

set env = "qa"

export env="qa"

echo $env

echo $(pwd)
cd ./scripts
chmod +x apply.sh


../scripts/apply.sh