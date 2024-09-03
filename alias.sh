has_installed=`cat ~/.zshrc | grep alias.sh`
if [ ! "$has_installed" ]; then
	echo ">>> config alias.sh"
	echo "" >> ~/.zshrc
	echo "# source alias.sh" >> ~/.zshrc
	echo "test -e `pwd`/alias.sh && source `pwd`/alias.sh" >> ~/.zshrc
fi

SYSTEM=`uname -s`

# alias
alias q="exit"
alias c='clear'
#alias glga='git log --graph --decorate --all'
alias glga='glgga'
alias f='fuck'
alias pl='adb -e pull'
alias sl='ls'
alias unix='date +%s'
alias v='vim'
alias gv='gvim'
alias nv='nvim'

alias put='adb -e shell input text'

# mac
if [ $SYSTEM = "Darwin" ]; then
	#alias gvim='mvim'
	alias o='open .'
    alias lsusb='system_profiler SPUSBDataType'

	# ndk
	alias addr2line='$ANDROID_NDK_PATH/toolchains/aarch64-linux-android-4.9/prebuilt/darwin-x86_64/bin/aarch64-linux-android-addr2line -C -f -e'
fi
