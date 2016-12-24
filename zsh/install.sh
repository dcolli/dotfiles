#!/bin/sh
#
# oh-my-zsh
#
# This installs oh-my-zsh locally
#
if [[ ! -d ~/.oh-my-zsh ]]
then
    echo "   Installing oh-my-zsh for you."

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    if test ! [ -f ~/.oh-my-zsh ] 
    then
        exit -1
    fi
    
    # zsh-autosuggestion
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

    # zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

fi

exit 0