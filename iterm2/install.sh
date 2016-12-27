#!/bin/sh
#
# Install iterm dynamic profile information
# 

if [[ ! -d  ~/Library/Application\ Support/iTerm2/DynamicProfiles ]] ; then
    mkdir ~/Library/Application\ Support/iTerm2/DynamicProfiles/
fi
 
cp ./com.googlecode.iterm2.plist ~/Library/Application\ Support/iTerm2/DynamicProfiles/

