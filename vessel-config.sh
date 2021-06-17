#!/usr/bin/env bash

if [[ -d "/home/$USER/bis2bis" ]]
    then
        echo "bis2bis directory already exist..."
        sudo rm -r ~/bis2bis/vessel
    else
        sudo mkdir ~/bis2bis
fi

sudo chown -R $USER:$USER ~/bis2bis
git clone git@gitlab.com:bis2bis-dev-tools/vessel.git /home/$USER/bis2bis/vessel

if [[ -f "/home/$USER/.bash_aliases" ]]
    then
        echo "Writing vessel bash alias..."
    else
        echo "Creating and registering bash alias..."
        sudo touch ~/.bash_aliases
fi

sudo chown -R $USER:$USER ~/.bash_aliases
sudo echo "alias vessel='/home/$USER/bis2bis/vessel/vessel.sh'" >> ~/.bash_aliases
