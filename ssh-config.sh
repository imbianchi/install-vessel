#!/usr/bin/env bash

echo "Configuring ssh connection gitlab..."

# key generation user ssh
ssh-keygen -t rsa -b 4096 -C "" -P "" -f "$HOME/.ssh/id_rsa_vessel" -q

# printing ssh pub key to insert on gitlab config
echo -e "${red}Adicione o código em amarelo abaixo no SSH do seu gitlab:${nc}"
sshpub="$(sudo cat ~/.ssh/id_rsa_vessel.pub)"
echo -e "${yellow}${sshpub}${nc}"

# waiting for user approval to go on...
echo -e "Após a chave ser adicionada corretamente, pressione ENTER para prosseguir..."
read -p ""

# set default ssh directory permission to user
sudo chown -R $USER:$USER ~/.ssh

# add ssh key into trustworthy ssh keys
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa_vessel

# test connection user/gitlab
echo "Testing connection into gitlab..."
ssh -T git@gitlab.com