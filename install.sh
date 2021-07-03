#!/usr/bin/env bash

USER=$(whoami)
red='\033[0;31m'
nc='\033[0m'
yellow='\033[1;33m'

export USER
export red
export nc
export yellow

bash ./docker-config.sh
bash ./ssh-config.sh

sudo apt install git -y

bash ./vessel-config.sh

exec bash

exit 0