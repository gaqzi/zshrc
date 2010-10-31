[ -z $ZSH ] && export ZSH=$HOME/code/zshrc/
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
setopt EXTENDED_GLOB

export BLOCKSIZE=K
export LC_CTYPE=sv_SE.UTF-8
export TZ=Europe/Stockholm
export PAGER=less
export EDITOR=vim
export RSPEC=true
export WORDCHARS="${WORDCHARS:s#/#}" # Remove / from WORDCHARS, leave the rest
export PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:/usr/X11R6/bin:$HOME/bin"

source $ZSH/prompt.zsh

[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local

