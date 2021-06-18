#!/usr/bin/env bash

echo "Configuring ssh conn gitlab..."

sudo ssh-keygen -t rsa -b 4096 -C "" -P "" -f "/home/$HOME/.ssh/id_rsa_b2b" -q

echo -e "${red}Adicione o código em amarelo abaixo no SSH do seu gitlab:${nc}"
sshpub="$(sudo cat ~/.ssh/id_rsa_b2b.pub)"
echo -e "${yellow}${sshpub}${nc}"

echo -e "Após adicionado corretamente, pressione ENTER para prosseguir..."
read -p ""