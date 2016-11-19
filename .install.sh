#!/bin/bash

copy_git(){
	echo "复制 work-every-where 至根目录"
	cp -R ./ ~/
}

install_zsh(){
	if [ -f ~/.zshrc ];then
		echo "安装 zsh"
		sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	fi
	sudo chmod 777 ~/.zshrc
}

install_sh_user(){
	has_sh_user=`cat ~/.zshrc | grep sh_user`
	if [ ! "$has_sh_user" ]; then
		echo "配置 sh_user"
		echo "" >> ~/.zshrc
		echo "# source .sh_user" >> ~/.zshrc
		echo "test -e ~/.sh_user && source ~/.sh_user" >> ~/.zshrc
	fi
}

install_shell_integration(){
	has_iterm2=`cat ~/.zshrc | grep iterm2`
	if [ ! "$has_iterm2" ]; then
		echo "安装 shell integration"
		echo "" >> ~/.zshrc
		echo "# iterm2" >> ~/.zshrc
		curl -L https://iterm2.com/misc/install_shell_integration.sh | bash
	fi
}

sudo echo "开始配置"
copy_git;
install_sh_user;
install_shell_integration;


