HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "\e[A" history-beginning-search-backward-end #cursor up
bindkey "\e[B" history-beginning-search-forward-end  #cursor down
bindkey ' ' magic-space    # also do history expansion on space
