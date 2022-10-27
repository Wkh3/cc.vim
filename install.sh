#!/bin/bash

echo "----------------install git----------------"
apt-get install git -y

echo "----------------install curl----------------"
apt-get install curl -y

echo "----------------install nvim----------------"
apt-get install neovim -y

echo "----------------install ctags----------------"
apt-get install ctags -y

echo "----------------install npm----------------"
apt-get install npm -y

echo  "----------------install coc.vim----------------"
curl -sL install-node.vercel.app/lts | bash
apt-get install ccls -y
#cd ~/.config/vim/plugged/coc.nvim
#npm install

echo  "----------------install fzf---------------"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install -y

echo "----------------install Vim-Plug----------------"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if [ ! -d ~/.config/nvim/ ]; then
    mkdir -p ~/.config/nvim/
fi

rm -f ~/.config/nvim/init.vim
cp init.vim ~/.config/nvim/init.vim
cp coc-settings.json ~/.config/nvim

