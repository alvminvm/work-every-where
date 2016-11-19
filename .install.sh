#!/bin/bash

copy_git(){
	echo ">>> copy work-every-where to $HOME"
	sudo cp -R ./ ~/
}

install_zsh(){
	if [ -f ~/.zshrc ];then
		echo ">>> install zsh"
		sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	fi
	sudo chmod 777 ~/.zsh*
	sudo chmod 777 ~/.zcomp*
}

install_sh_user(){
	has_sh_user=`cat ~/.zshrc | grep sh_user`
	if [ ! "$has_sh_user" ]; then
		echo ">>> config sh_user"
		echo "" >> ~/.zshrc
		echo "# source .sh_user" >> ~/.zshrc
		echo "test -e ~/.sh_user && source ~/.sh_user" >> ~/.zshrc
	fi
}

install_shell_integration(){
	has_iterm2=`cat ~/.zshrc | grep iterm2`
	if [ ! "$has_iterm2" ]; then
		echo ">>> install shell integration"
		echo "" >> ~/.zshrc
		echo "# iterm2" >> ~/.zshrc
		curl -L https://iterm2.com/misc/install_shell_integration.sh | bash
	fi
}

config_git(){
	echo ">>> config git"
	git config --global user.name $username
	git config --global user.email $email
	echo "Current git config:"
	git config --global user.name
	git config --global user.email
}

read -p "Enter ur name(JeremyHe): " username
if [ ! "$username" ]; then
	username="JeremyHe"
fi
read -p "Enter ur email(jeremyhe.cn@gmail.com): " email
if [ ! "$email" ]; then
	email="jeremyhe.cn@gmail.com"
fi
sudo echo ">> start install"
copy_git;
install_sh_user;
install_shell_integration;
config_git;
echo ">> install finish"


