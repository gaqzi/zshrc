#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin
# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(rvm-prompt i v g s 2> /dev/null) || return
  echo "($ruby_version)"
}
