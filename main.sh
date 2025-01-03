cur_dir=`pwd`
work_dir=$(cd `dirname $0`; pwd)
cd $cur_dir

export WEW_PATH=$work_dir
export PATH="$work_dir/bin:$PATH"

source $work_dir/path.sh
source $work_dir/alias.sh

if [ ! -f ~/.ideavimrc ]; then
    echo "config ideavimrc"
    echo "source $WEW_PATH/vim/hotkey.vimrc" >> ./.ideavimrc
    echo "source $WEW_PATH/ideavimrc" >> ./.ideavimrc
fi

if [ ! -f ~/.vscodevimrc ]; then
    echo "config vscodevimrc"
    echo "source $WEW_PATH/vim/hotkey.vimrc" >> ./.vscodevimrc
    echo "nmap f <leader><leader>s" >> ./.vscodevimrc
fi