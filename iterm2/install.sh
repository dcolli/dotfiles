#!/bin/sh
#
# Install iterm dynamic profile information
# 
CURRDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ ! -d  ~/Library/Application\ Support/iTerm2/DynamicProfiles ]] ; then
    mkdir ~/Library/Application\ Support/iTerm2
    mkdir ~/Library/Application\ Support/iTerm2/DynamicProfiles
fi
cp $CURRDIR/com.googlecode.iterm2.plist ~/Library/Application\ Support/iTerm2/DynamicProfiles/

