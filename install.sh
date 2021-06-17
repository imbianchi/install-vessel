#!/usr/bin/env bash

USER=$(whoami)
RED='\033[0;31m'
NC='\033[0m'
ALERT='\033[1;33m'

export USER
export RED
export NC
export ALERT

# bash ./docker-config.sh
# bash ./docker-compose-config.ssh
# bash ./ssh-config.sh

sudo apt install git -y

bash ./vessel-config.sh