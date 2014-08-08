setopt PROMPT_SUBST

# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Handles both rvm and rbenv
function ruby_prompt_info() {
    _prompt=`rvm_prompt_info`
    if [ -z $_prompt ] ; then
        _prompt=`rbenv_prompt_info`
    fi

    if [ -n $_prompt ] ; then
        echo "($_prompt)"
    fi
}

PROMPT='%B%n%b@%m$(git_prompt_info)$(ruby_prompt_info)%# '
RPROMPT='(%2~)'
case $TERM in
    cons*|dumb)
        ;;
    *)
        precmd () { print -Pn "\e]0;%n@%m: %3~, %*, CODE=$?\a" }
        ;;
esac
