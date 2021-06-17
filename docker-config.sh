#!/usr/bin/env bash

# isntall prerequisetes docker and add docker repo
sudo apt update -y \
    apt install apt-transport-https ca-certificates curl software-properties-common -y \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - \
    add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable' \
    apt update -y

# install docker
sudo apt install docker-ce -y

# add docker group permissions
# verify if docker group exist
if grep -q docker /etc/group
    then
        echo "docker group already exists..."
    else
        sudo groupadd docker
        newgrp docker
        sudo usermod -aG docker $USER
fi