set -e

set env = "qa"

export env

cd ./scripts

chmod +x apply.sh

../scripts/apply.sh