android_home="$HOME/android/sdk"
if [ -d $android_home  ] ; then
  export PATH="$PATH:$android_home/platform-tools:$android_home/tools"
fi
