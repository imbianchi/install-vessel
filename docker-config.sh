#!/usr/bin/env bash

# install prerequisetes docker and add docker repo

sudo su
echo "Downloading and installing docker..."
apt update -y
apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable'
apt update -y

# install docker
apt install docker-ce -y

# verify if docker group exist
# add docker group permissions
echo "Adding docker group..."
if grep -q docker /etc/group
    then
        echo "docker group already exists..."
    else
        groupadd docker
        newgrp docker
        usermod -aG docker $USER
fi

# install docker-compose
echo "Downloading and installing docker compose..."
apt install docker-compose -y
chmod +x /usr/local/bin/docker-compose
systemctl restart docker