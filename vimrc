set nocompatible

"set the runtime path to include Vundle and initialize
" required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'hashivim/vim-packer'
Plugin 'hashivim/vim-terraform'
"Plugin 'python-mode/python-mode'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" python-mode
filetype indent plugin on    " required
let g:pymode_python = 'python3'

syntax enable on
" set leader key
let mapleader=","
" Load custom colors
source ~/.vim/startup/color.vim
" Load custom settings
source ~/.vim/startup/settings.vim
" Load custom python and c
"source ~/.vim/startup/pythonandc.vim
" Load custom mappings
source ~/.vim/startup/mappings.vim
" Build up tags
command! MakeTags !ctags .

" watch me for the changes and re-source file
augroup reload_vimrc " {
  autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
