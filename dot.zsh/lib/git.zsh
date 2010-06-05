# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX="(" # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX=")" # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY="*" # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN="" # Text to display if the branch is clean

# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

parse_git_dirty () {
  if [[ -n $(git status -s 2> /dev/null) ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}
