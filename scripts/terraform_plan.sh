set -e

echo "Fetching values files"
cd ./vars
for FILE in *
    do
     terraform plan -var-file=$FILE
     echo "printing"$FILE
    done

    
    # foreach ($i in $a) {
    #     cd ..
    #     terraform plan -var-file=vars/i
    #     echo "printing"$i
    # }