#!/bin/bash
SYSTEM=`uname`
ROOT_DIR=`pwd`

install_brew(){
	if type brew >/dev/null 2>&1; then
		echo "brew has installed"
	else
		echo ">>> install homebrew"
		export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
		export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
		export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
		/bin/bash -c "$(curl -fsSL https://gh-proxy.com/raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

		echo >> /Users/al/.zprofile
    	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/al/.zprofile
    	eval "$(/opt/homebrew/bin/brew shellenv)"

	    echo '# Set non-default Git remotes for Homebrew/brew and Homebrew/homebrew-core.' >> /Users/al/.zprofile
    	echo 'export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"' >> /Users/al/.zprofile
    	echo 'export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"' >> /Users/al/.zprofile
    	export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
    	export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
	fi
}

install_ohmyzsh(){
	if [ -d ~/.oh-my-zsh ];then
		echo ">>> oh-my-zsh has installed"
	else
		echo ">>> install oh-my-zsh"
		sh -c "$(curl -fsSL https://gh-proxy.com/raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	fi
	sudo chmod 777 ~/.zsh*
	sudo chmod 777 ~/.zcomp*

	has_set_plugin=`cat ~/.zshrc | grep "custom plugins"
	if [ ! "$has_set_plugin" ]; then
		echo "" >> ~/.zshrc
		echo "# custom plugins" >> ~/.zshrc
		echo "plugins=($plugins osx autojump copydir adb)" >> ~/.zshrc
	fi

	has_set_theme=`cat ~/.zshrc | grep "custom theme"
	if [ ! "$has_set_theme" ]; then
		echo "" >> ~/.zshrc
		echo "# custom theme" >> ~/.zshrc
		echo "ZSH_THEME=\"gallois\"" >> ~/.zshrc
	fi
}


install_localrc(){
    localrc=".local.sh"
	has_localrc=`cat ~/.zshrc | grep $localrc`
	if [ ! "$has_localrc" ]; then
		echo ">>> config localrc"
		echo "" >> ~/.zshrc
		echo "# source $localrc" >> ~/.zshrc
		echo "test -e ~/$localrc && source ~/$localrc" >> ~/.zshrc
	fi
}

install_main(){
	has_localrc=`cat ~/.zshrc | grep main.sh`
	if [ ! "$has_localrc" ]; then
		echo ">>> config work-every-where"
		echo "" >> ~/.zshrc
		echo "# source main.sh" >> ~/.zshrc
		echo "test -e $ROOT_DIR/main.sh && source $ROOT_DIR/main.sh" >> ~/.zshrc
	fi
}

insall_pod() {
	if type pod >/dev/null 2>&1; then
		echo ">>> pod has installed"
	else
		echo ">>> install pod"
		brew install ruby
		gem install cocoapods --user-install
	fi
}

config_git(){
	echo ">>> config git"
	git config --global user.name $username
	git config --global user.email $email
	echo ">>> Current git config:"
	git config --global user.name
	git config --global user.email
	echo ""
}

config_vim(){
	if type vim >/dev/null 2>&1; then
		echo ">>> vim has installed"
		# if [ "$SYSTEM" = "Darwin" ]; then
		# 	if ! type mvim >/dev/null 2>&1; then
		# 		brew install macvim --with-override-system-vim
		# 		# brew linkapps
		# 	fi
		# fi
	else
		echo "install vim ..."
		sudo apt-get install vim;
	fi

	echo ">>> config vim"
	ln -s ~/.vimrc $ROOT_DIR/.vimrc
	if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	fi

    vim +PluginInstall +qall	

	cd ~/.vim/bundle/YouCompleteMe
	./install.py --clang-completer

	cd $ROOT_DIR
}

# main
read -p "Enter ur name(al): " username
if [ ! "$username" ]; then
	username="al"
fi

read -p "Enter ur email(alvminvm@qq.com): " email
if [ ! "$email" ]; then
	email="alvminvm@qq.com"
fi

sudo echo ">> start install"
install_brew;
install_localrc;
install_ohmyzsh;
install_main;
insall_pod;
config_git;
config_vim;
echo ">> install finish"


