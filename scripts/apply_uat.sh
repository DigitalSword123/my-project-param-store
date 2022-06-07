set -e

set env = "uat"

export env="uat"

echo $env

echo $(pwd)

chmod +x apply.sh


../scripts/apply.sh