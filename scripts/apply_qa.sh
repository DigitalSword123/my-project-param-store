set -e

set env = "qa"

export env="qa"

echo $env

echo $(pwd)

chmod +x apply.sh


../scripts/apply.sh