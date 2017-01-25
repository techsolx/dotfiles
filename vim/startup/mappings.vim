"------------Mappings----------
" map leader ev to edit .vimrc
map <leader>ev :tabedit $MYVIMRC<cr>
" map leader space to :noh
map <leader><space> :noh<cr>
" remap nolist toggle
nmap <leader><l> :set list!<CR>
" watch me for the changes and re-source file
augroup autosouring
 autocmd!
 autocmd BufWritePost .vimrc source %
augroup END
