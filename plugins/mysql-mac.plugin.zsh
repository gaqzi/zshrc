# When using the official MySQL installation package for OSX
if [[ $OSTYPE =~ darwin ]] && [[ -d /usr/local/mysql ]]; then
    export PATH=$PATH:/usr/local/mysql/bin
    export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
fi
