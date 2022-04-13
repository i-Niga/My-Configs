#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc ~/.vimrc

vim -e -s -c "source ~/.vimrc" -c "PlugInstall" -c "qa"

echo "Done!"