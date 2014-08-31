#!/bin/bash
if [ ! -f ~/.zshrc ] ; then
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    echo "source ${DIR}/zshrc" > ~/.zshrc
else
    echo "~/.zshrc already exists, not creating"
fi
