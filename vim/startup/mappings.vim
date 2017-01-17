" ----------Mappings----------
"  watch me for the changes and try to keep up
augroup autosourcing
	autocmd!
	autocmd BufWritePost mappings.vim source %
augroup END
" map leader n to toggle NERDTree
map <leader>n :NERDTreeToggle<CR>
" map leader ev to edit .vimrc
map <leader>ev :tabedit $MYVIMRC<cr>
" map leader space to :noh
map <leader><space> :noh<cr>
