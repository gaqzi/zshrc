export ZSH=$HOME/.zsh

for file ($ZSH/lib/*.zsh) source $file
for file ($ZSH/plugins/*.zsh) source $file

PROMPT="%n@%m: %~$(git_prompt_info)%# "
setopt prompt_subst

setopt multios # multiple output redirections
