# julia language
cd ~
wget https://julialang-s3.julialang.org/bin/linux/x64/1.2/julia-1.2.0-linux-x86_64.tar.gz
tar -zxvf julia-1.2.0-linux-x86_64.tar.gz
rm julia-1.2.0-linux-x86_64.tar.gz
# should be better way exist, we can check if the path exist
echo "export PATH=\$PATH:\$HOME/julia-1.2.0/bin" >> .bashrc

# editor vim
mkdir .vim
cd .vim &&
git clone https://github.com/tpope/vim-pathogen.git
cd ~
echo "execute pathogen#infect()" >> .vimrc
echo "syntax on" >> .vimrc
echo "filetype plugin indent on" >> .vimrc
cd .vim
mkdir bundle && cd bundle &&
git clone git://github.com/JuliaEditorSupport/julia-vim.git

# eidtor jupyter configuration



