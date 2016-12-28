#!/bin/sh
#
# Instant Markdown

mkdir -p .vim/after/ftplugin/markdown && cd $_
curl -fLo instant-markdown.vim https://raw.githubusercontent.com/suan/vim-instant-markdown/master/after/ftplugin/markdown/instant-markdown.vim
