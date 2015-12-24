if [ "$(type aws)" != "aws not found" ] ; then
  source aws_zsh_completer.sh
  [ -f ~/.awsconfig ] && source ~/.awsconfig
fi
