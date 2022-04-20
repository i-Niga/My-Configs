#!/bin/bash

apt install curl vim vifm tmux zsh  -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc
vim -e -s -c "source ~/.vimrc" -c "PlugInstall" -c "qa"

cp vifm/vifmrc ~/.vifm/vifmrc
cp vifm/Ansa.vifm ~/.vifm/colors/Ansa.vifm

cp .tmux.conf ~/.tmux.conf

chsh -s $(which zsh) 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
echo "installing complete!"
