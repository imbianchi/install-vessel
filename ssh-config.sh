#!/usr/bin/env bash

echo "Configuring ssh conn gitlab..."

sudo ssh-keygen -t rsa -b 4096 -C "" -P "" -f "/home/$HOME/.ssh/id_rsa_b2b" -q

echo -e "${RED}Adicione o código em amarelo abaixo no SSH do seu gitlab:${NC}"
SSHPUB="$(sudo cat ~/.ssh/id_rsa_b2b.pub)"
echo -e "${ALERT}${SSHPUB}${NC}"

echo -e "Após adicionado corretamente, pressione ENTER para prosseguir..."
read -p ""