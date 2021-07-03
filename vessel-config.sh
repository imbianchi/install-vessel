#!/usr/bin/env bash

# verify if vessel drectory already exists
if [[ -d "$HOME/vessel" ]]
    then
        echo "vessel directory already exists..."
        # delete everything inside
        sudo rm -rf ~/vessel/*
        sudo rm -rf ~/vessel/.*
    else
        sudo mkdir ~/vessel
fi

# set directory permission to user
sudo chown -R $USER:$USER ~/vessel

# clone vessel repository
git clone git@gitlab.com:bis2bis-dev-tools/vessel.git $HOME/vessel

# verify if bash configuration aliases file already exists
if [[ -f "$HOME/.bash_aliases" ]]
    then
        echo "Writing vessel bash alias..."
    else
        echo "Creating and registering bash alias..."
        sudo touch ~/.bash_aliases
fi

# give writing permission to user and insert vessel alias
sudo chown -R $USER:$USER ~/.bash_aliases
echo "alias vessel='$HOME/vessel/vessel.sh'" >> ~/.bash_aliases

# run vessel
bash "$HOME/vessel/vessel.sh"
