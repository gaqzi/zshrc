#!/bin/bash
if [ ! -f ~/.zshrc ] ; then
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    echo "export ZSH=$HOME/code/conf/zshrc/" > ~/.zshrc
    echo "source ${DIR}/zshrc" >> ~/.zshrc
else
    echo "~/.zshrc already exists, not creating"
fi
