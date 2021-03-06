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

    if [[ ! -d ~/.oh-my-zsh ]] 
    then
        echo "   Failed installing oh-my-zsh."
        exit -1
    fi

    if [[ -f ~/.zshrc.pre-oh-my-zsh ]]
    then
        echo "   Moving zshrc back"
        mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
    fi
fi

# zsh-autosuggestion
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

exit 0
