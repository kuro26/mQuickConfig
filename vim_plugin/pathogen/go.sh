# config pathogen in .vimrc
echo "execute pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc
# add plugins for go
cd ~/.vim
mkdir -p bundle && cd bundle
# 1. plugin YouCompleteMe
if ((2*3 == 6)); then
    cd ~/.vim/bundle
    git clone https://github.com/ycm-core/YouCompleteMe.git
    cd YouCompleteMe
    sudo apt install build-essential cmake python3-dev
    git submodule update --init --recursive
    python3 install.py --go-completer
    # seems VPN is required for compliling go completer
    # perhaps goproxy can help me with the question
fi

# 2. plugin vim-go
if ((2*3 == 6));then
    git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
    # this need golang.org which is not accessible!sad!
fi