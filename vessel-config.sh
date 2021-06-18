#!/usr/bin/env bash

if [[ -d "$HOME/vessel" ]]
    then
        echo "vessel directory already exist..."
        sudo rm -r ~/vessel/*
    else
        sudo mkdir ~/vessel
fi

sudo chown -R $USER:$USER ~/vessel
git clone git@gitlab.com:bis2bis-dev-tools/vessel.git $HOME/vessel

if [[ -f "$HOME/.bash_aliases" ]]
    then
        echo "Writing vessel bash alias..."
    else
        echo "Creating and registering bash alias..."
        sudo touch ~/.bash_aliases
fi

sudo chown -R $USER:$USER ~/.bash_aliases
sudo echo "alias vessel='$HOME/vessel/vessel.sh'" >> ~/.bash_aliases
