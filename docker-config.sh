#!/usr/bin/env bash

# install prerequisetes docker and add docker repo
echo "Downloading and installing docker..."
sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable'
sudo apt update -y

# install docker
sudo apt install docker-ce -y
sudo systemctl restart docker

# verify if docker group exist
# add docker group permissions
echo "Adding docker group..."
if grep -q docker /etc/group
    then
        echo "docker group already exists..."
    else
        sudo groupadd docker
        newgrp docker
        sudo usermod -aG docker $USER
fi

# install docker-compose
echo "Downloading and installing docker compose..."
sudo apt install docker-compose -y
sudo systemctl restart docker