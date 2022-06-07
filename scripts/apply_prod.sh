set -e

set env = "prod"

export env="prod"

echo $env

echo $(pwd)

chmod +x apply.sh


../scripts/apply.sh