mkdir -p ~/.vim && cd ~/.vim
git clone https://github.com/tpope/vim-pathogen.git

mkdir -p autoload && cp vim-pathogen/autoload/pathogen.vim autoload
rm -rf vim-pathogen

echo "execute pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc