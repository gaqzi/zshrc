HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY

bindkey "\e[A" history-substring-search-up   #cursor up
bindkey "\e[B" history-substring-search-down #cursor down
bindkey ' ' magic-space    # also do history expansion on space
