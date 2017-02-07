"----------Colors-----------
set t_Co=256
syntax enable
set background=dark
colorscheme solarized
" watch me for the changes and re-source file
augroup reload_file " {
  autocmd!
    autocmd BufWritePost color.vim source $MYVIMRC
augroup END " }
