#!/bin/zsh
source zshrc

grep -v -E 'source|ZSH=|fpath' zshrc

sources=`grep source zshrc`
for file in $sources ; do
    lines=`echo $file | sed -E 's/(source)/cat/' | zsh`
    for line in $lines ; do
        echo $line
    done
done
