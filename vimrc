runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax enable
filetype indent plugin on
" Enable syntax highlighting
syntax on

" Load custom colors
source ~/.vim/startup/color.vim
" Load custom settings
source ~/.vim/startup/settings.vim
