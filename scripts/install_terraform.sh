echo $PATH
sudo apt-get install wget unzip -y
wget http://releases.hashicorp.com/terraform/0.12.5/terraform_0.12.5_linux_amd64.zip
echo "before unzip"
ls -a
unzip terraform_0.12.5_linux_amd64.zip
echo "after unzip"
ls -a
sudo mv terraform /usr/local/bin/

terraform -v