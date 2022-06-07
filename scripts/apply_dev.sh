set -e

set env = "dev"

export env="dev"

echo $env

echo $(pwd)

chmod +x apply.sh


../scripts/apply.sh