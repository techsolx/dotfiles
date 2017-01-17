runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype indent plugin on

" Load custom colors
source ~/.vim/startup/color.vim
" Load custom settings
source ~/.vim/startup/settings.vim
" Load custom mappings
source ~/.vim/startup/mappings.vim

" watch me for the changes and re-source file
autocmd BufWritePost .vimrc source %
