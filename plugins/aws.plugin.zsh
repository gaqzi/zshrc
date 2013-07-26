if [ "$(type aws)" != "aws not found" ] ; then
	export AWS_CONFIG_FILE=$HOME/.awsconfig
	source aws_zsh_completer.sh
fi
