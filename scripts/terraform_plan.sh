set -e

echo "Fetching values files"
# terraform init -backend-config="access_key=<your access key>" -backend-config="secret_key=<your secret key>"
terraform init
# cd ./vars
for FILE in ./vars/*
    do
     terraform plan -var-file=$FILE
     echo "printing"$FILE
    done


    # foreach ($i in $a) {
    #     cd ..
    #     terraform plan -var-file=vars/i
    #     echo "printing"$i
    # }