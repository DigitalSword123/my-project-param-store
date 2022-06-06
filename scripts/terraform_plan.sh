set -e

echo "Fetching values files"
cd ../vars
$a=git ls-files
    foreach ($i in $a) {
        cd ..
        ./terraform plan -var-file=vars/i
        echo "printing"$i
    }