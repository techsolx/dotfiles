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
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'python-mode/python-mode'
Plugin 'hashivim/vim-terraform'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype indent plugin on    " required

syntax enable on
" set leader key
let mapleader=","
" Load custom colors
source ~/.vim/startup/color.vim
" Load custom settings
source ~/.vim/startup/settings.vim
" Load custom python and c
source ~/.vim/startup/pythonandc.vim
" Load custom mappings
source ~/.vim/startup/mappings.vim
" Build up tags
command! MakeTags !ctags -R .

" watch me for the changes and re-source file
augroup reload_vimrc " {
  autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
