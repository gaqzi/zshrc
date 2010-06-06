export ZSH=$HOME/code/zshrc/
fpath=($ZSH/functions $fpath)

for file ($ZSH/lib/*.zsh) source $file
for file ($ZSH/plugins/*.zsh) source $file

# Enable auto-execution of functions
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

setopt MULTIOS # multiple output redirections
setopt ALWAYS_TO_END
setopt NO_AUTO_MENU
setopt NO_CORRECT
setopt NO_BEEP
setopt EMACS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt EXTENDED_GLOB

export BLOCKSIZE=K
export LC_CTYPE=sv_SE.UTF-8
export PAGER=less
export EDITOR=vim
export WORDCHARS="${WORDCHARS:s#/#}"

source $ZSH/prompt.zsh
