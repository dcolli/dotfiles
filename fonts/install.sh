#!/bin/sh
#
# Install Inconsolata Fonts
#

if [[ $(uname) == 'Darwin' ]]; then
    cd "$HOME/Library/Fonts" && curl -fLo "Inconsolata for Powerline Nerd Font Complete Mono.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Inconsolata/complete/Inconsolata%20for%20Powerline%20Nerd%20Font%20Complete%20Mono.otf
else
    mkdir -p "$HOME/.local/share/fonts"
    cd "$HOME/.local/share/fonts" && curl -fLo "Inconsolata for Powerline Nerd Font Complete Mono.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Inconsolata/complete/Inconsolata%20for%20Powerline%20Nerd%20Font%20Complete%20Mono.otf
fi

if [[ -n $(which fc-cache) ]]; then
    fc-cache -f "$HOME/.local/share/fonts"
fi
