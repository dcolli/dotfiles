#!/bin/sh
#
# oh-my-zsh
#
# This installs oh-my-zsh locally
#
if test ! [ -f ~/.oh-my-zsh ]
then
    echo "   Installing oh-my-zsh for you."

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    if test ! [ -f ~/.oh-my-zsh ] 
    then
        exit -1
    fi
fi

exit 0
