clear
ll
clear
pwd
ll
cd ..
ll
cd shh
cd home
ll
clear
cd ts
ll
cd ssh
clear
mkdir FINAL_PROJECT
ll
cd FINAL_PROJECT
ll
clear
code .
sudo apt update
clear
mkdir roles
mkdir docker
mkdir nexus
mkdir jenkins
mkdir sonarqube
clear
touch inventory.ini
touch ansible.cfg
touch readme.md
fish
sudo apt install fish
clear
fish
clear
sudo apt-get install apt-transport-https ca-certificates gnupg curl
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
clear
sudo apt-get update && sudo apt-get install google-cloud-cli
sudo apt-get update
sudo apt-get install -y ca-certificates gnupg curl
clear
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg   | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main"   | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update
sudo apt-get install -y google-cloud-cli
clear
gcloud version
gcloud auth login
clear
gcloud config list
clear
fish
groups
docker ps -a
clear
ll
clear
ll
clear
mkdir FINAL-PROJECT
fish
clear
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
clear
docker ps -a
fish
sudo usermod -aG docker ts
id
newgrp docker
docker ps
docker ps -a
groups
sudo systemctl start docker
clear
whoami
docker ps
clear
sudo usermod -aG docker ts
newgrp docker
sudo apt update
sudo apt install -y util-linux-extra
clear
newgrp docker
fish
clear
fish
clear
fish
ssh ts@34.81.182.183
clear
