#!/bin/bash

cp .vimrc ~/.vimrc
vim -e -s -c "source ~/.vimrc" -c "PlugInstall" -c "qa"
cp -R .vifm ~/ 
cp .tmux.conf ~/.tmux.conf
cp .zshrc ~/.zshrc
echo "installing complete!"
