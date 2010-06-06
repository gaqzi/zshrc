setopt PROMPT_SUBST

# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%B%n%b@%m$(git_prompt_info)%% '
RPROMPT='%B(%2~)%b'
case $TERM in
    cons*)
        ;;
    *)
        precmd () { print -Pn "\e]0;%n@%m: %3~, %*, CODE=$?\a" }
        ;;
esac

