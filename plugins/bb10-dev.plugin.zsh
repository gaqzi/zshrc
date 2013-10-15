bb10_dev_directory='/Applications/Momentics.app/host_10_2_0_15/darwin/x86/usr/bin'
if [ -d "$bb10_dev_directory" ] ; then
    export PATH=$PATH:$bb10_dev_directory
fi
unset bb10_dev_directory
