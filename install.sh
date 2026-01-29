#!/usr/bin/env bash

# update bash shells to zsh
cp /etc/passwd ~/.passwd
sudo sed -i 's/\/bash/\/zsh/' /etc/passwd

# link some files
ln -sf $PWD/.zshrc ~/.zshrc
ln -sf $PWD/.npmrc ~/.npmrc
ln -sf $PWD/.riff_history ~/.riff_history
ln -sf $PWD/fred.zsh-theme ~/.oh-my-zsh/custom/themes/fred.zsh-theme

mkdir -p ~/.claude
ln -sf $PWD/.claude/settings.json ~/.claude/settings.json
rm -rf ~/.claude/agents ~/.claude/output-styles
ln -sf $PWD/.claude/agents ~/.claude/agents
ln -sf $PWD/.claude/output-styles ~/.claude/output-styles

# include this in our container gitconfig
git config --global include.path "${PWD}/.gitconfig"
