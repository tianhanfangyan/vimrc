#!/usr/bin/env bash


if [ -s ~/.vimrc ]; then
    echo "Backup old ~/.vimrc file."
    mv ~/.vimrc ~/.vimrc.bak
fi
ln -s ~/.vim/vimrc ~/.vimrc

echo "Clone vundle frome github.com."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Install plugin vundel."
vim +PluginInstall +qall

echo "Install done"