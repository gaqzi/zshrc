zmodload -i zsh/complist
autoload -U compinit
compinit

zstyle ':completion:*:default' list-colors $LS_COLORS

# zstyle ':completion:*' completions 1
# zstyle ':completion:*' glob 1
# zstyle ':completion:*' max-errors 0
# zstyle ':completion:*' substitute 1

if [ -f ~/.ssh/known_hosts ]; then
    zstyle ':completion:*' hosts $( sed 's/[, ].*$//' $HOME/.ssh/known_hosts )
    zstyle ':completion:*:*:(ssh|scp):*:*' hosts `sed 's/^\([^ ,]*\).*$/\1/' ~/.ssh/known_hosts`
fi
