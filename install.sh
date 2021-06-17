#!/usr/bin/env bash

bash ./docker-config.sh
bash ./docker-compose-config.sh

sudo bash -c "apt update -y"
sudo bash -c "apt install git -y"

bash ./ssh-config.sh