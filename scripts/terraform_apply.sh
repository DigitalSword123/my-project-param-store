set -e

echo "Fetching values files"
cd ./vars
for FILE in *
    do
     terraform apply -var-file=$FILE
     echo "printing"$FILE
    done