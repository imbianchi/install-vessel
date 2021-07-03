#!/usr/bin/env bash

if [[ -d "$HOME/vessel" ]]
    then
        echo "vessel directory already exist..."
        rm -rf ~/vessel/*
        rm -rf ~/vessel/.*
    else
        mkdir ~/vessel
fi

chown -R $USER:$USER ~/vessel
git clone git@gitlab.com:bis2bis-dev-tools/vessel.git $HOME/vessel

if [[ -f "$HOME/.bash_aliases" ]]
    then
        echo "Writing vessel bash alias..."
    else
        echo "Creating and registering bash alias..."
        touch ~/.bash_aliases
fi

chown -R $USER:$USER ~/.bash_aliases
echo "alias vessel='$HOME/vessel/vessel.sh'" >> ~/.bash_aliases
bash "$HOME/vessel/vessel.sh"
