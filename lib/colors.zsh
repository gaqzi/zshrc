autoload colors; colors;

# If the following command exits 0 we're on a GNU-based platform,
#   otherwise BSD. Set variables and aliases accordingly
# http://geoff.greer.fm/lscolors/
`ls --color -d . &>/dev/null 2>&1`
if [[ $? -eq 0 ]] ; then
    alias ls='ls --color=always'
else
    # Colors used in BSD ls.
    export LSCOLORS=gxfxcxdxbxegedabagacad
    alias ls='ls -G'
fi

# Used by GNU ls and zsh for completion colors
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:'
