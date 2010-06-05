if [[ $OSTYPE == 'bsd' || $OSTYPE == 'darwin' ]] ; then
    export LSCOLORS=gxfxcxdxbxegedabagacad
    alias ls='ls -G'
else
    export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
    alias ls='ls --color=always'
fi
