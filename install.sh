#!/usr/bin/env bash

# update bash shells to zsh
cp /etc/passwd ~/.passwd
sudo sed -i 's/\/bash/\/zsh/' /etc/passwd

# link some files
ln -sf $PWD/.zshrc ~/.zshrc
ln -sf $PWD/.gitconfig ~/.gitconfig
ln -sf $PWD/fred.zsh-theme ~/.oh-my-zsh/custom/themes/fred.zsh-theme
