#!/usr/bin/env bash

# remove docker-compose v1 so oh-my-zsh uses v2
if [ -f /etc/alternatives/docker-compose ]; then
  sudo update-alternatives --remove-all docker-compose
else
  sudo rm -f /usr/local/bin/docker-compose
fi

# update bash shells to zsh
cp /etc/passwd ~/.passwd
sudo sed -i 's/\/bash/\/zsh/' /etc/passwd

# link some files
ln -sf $PWD/.zshrc ~/.zshrc
ln -sf $PWD/.gitconfig ~/.gitconfig
ln -sf $PWD/fred.zsh-theme ~/.oh-my-zsh/custom/themes/fred.zsh-theme
