echo $PATH
# sudo apt-get update
sudo apt install software-properties-common -y
sudo apt-get install wget unzip -y
wget http://releases.hashicorp.com/terraform/0.12.5/terraform_0.12.5_linux_amd64.zip
unzip terraform_0.12.5_linux_amd64.zip

# sudo apt-get install wget curl -y
# curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
# sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
# sudo apt-get update && sudo apt-get install terraform

terraform -v