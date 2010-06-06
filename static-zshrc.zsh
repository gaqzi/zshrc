#!/bin/zsh
LOCAL_PATH=`dirname $0`

grep -v -E 'source|ZSH=|fpath' $LOCAL_PATH/zshrc

sources=`grep source $LOCAL_PATH/zshrc`
for file in $sources ; do
    eval "`echo $file | sed 's/source/cat/' | sed "s/ZSH/LOCAL_PATH/"`"
done
