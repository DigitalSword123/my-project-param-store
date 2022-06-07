set -e

set env = "prod"

export env

cd ./scripts

chmod +x apply.sh

../scripts/apply.sh