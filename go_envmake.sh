# download and 
cd ~
wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -zxvf go1.13.linux-amd64.tar.gz
rm go1.13.linux-amd64.tar.gz

# add path
echo "export GOROOT=$HOME/go" > .bashrc
echo "export GOPATH=$HOME/gopath" > .bashrc
echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" > .bashrc

# add pathogen manager for vim
cd ~ && mkdir .vim
cd .vim
git clone https://github.com/tpope/vim-pathogen.git
cd ~
echo "execute pathogen#infect()" >> .vimrc
echo "syntax on" >> .vimrc
echo "filetype plugin indent on" >> .vimrc
# add plugins for go
cd .vim
mkdir bundle && cd bundle
# 1. plugin YouCompleteMe
git clone https://github.com/ycm-core/YouCompleteMe.git
cd YouCompleteMe