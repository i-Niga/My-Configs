#!/bin/bash

apt install curl -y

apt install vim -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc
vim -e -s -c "source ~/.vimrc" -c "PlugInstall" -c "qa"

apt install vifm -y
cp vifm/vifmrc ~/.vifm/vifmrc
cp vifm/Ansa.vifm ~/.vifm/colors/Ansa.vifm

apt install tmux -y
cp .tmux.conf ~/.tmux.conf

apt install zsh -y
chsh -s $(which zsh) 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
echo "installing complete!"
