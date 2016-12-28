#!/bin/sh
#
# Vundle install
#
if [[ ! -d ~/.vim/bundle ]]
then
    echo "   Installing Vundle for you."

    mkdir -p "$HOME/.vim/bundle"
    cd "$HOME/.vim/bundle" && git clone https://github.com/VundleVim/Vundle.vim
    vim +PluginInstall 
fi

exit 0
