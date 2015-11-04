. env.sh

echo "install zsh and autojump"
echo $PWD | sudo -S apt-get -y install zsh autojump;
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh;
echo "## config zsh  "
echo "1. TODO: using chsh to change login shell to zsh  " >> $TODO
echo "-. TODO: add 'autojump' to plugins in .zshrc  " >> $TODO

if [ -f ~/.zshrc ]; then	
	echo "" >> ~/.zshrc
	echo "if [ -f ~/.sh_user ]; then" >> ~/.zshrc
	echo "	source ~/.sh_user" >> ~/.zshrc
	echo "fi" >> ~/.zshrc
	echo "" >> ~/.zshrc
else
	echo "error: .zshrc doesn't exist!"
fi

. divider.sh
