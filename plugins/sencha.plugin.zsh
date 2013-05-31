if [ -d ~/bin/Sencha ] ; then
    file=`find ~/bin/Sencha/Cmd -maxdepth 2 -name sencha`
	alias sencha="$file"
fi
