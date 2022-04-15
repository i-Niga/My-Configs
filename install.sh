#!/bin/bash

apt install vim -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc
vim -e -s -c "source ~/.vimrc" -c "PlugInstall" -c "qa"
echo "vim done!"

apt install vifm -y
cp vifm/vifmrc ~/.vifm/vifmrc
cp vifm/Ansa.vifm ~/.vifm/colors/Ansa.vifm
echo "vifm done!"

apt install tmux -y
cp .tmux.conf ~/.tmux.conf
echo "tmux done!"

apt install zsh -y
chsh -s $(which zsh) 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
echo "zsh done!"
