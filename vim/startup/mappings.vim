"------------Mappings----------
" map leader ev to edit .vimrc
map <leader>ev :tabedit $MYVIMRC<CR>
" map leader space to :noh
map <leader><space> :noh<CR>
" remap nolist toggle
nmap <leader>l :set list!<CR>
" remap IndentLinesToggle
nmap <leader>i :IndentLinesToggle<CR>

"tweaks for netwr browsing
let g:netrw_banner=0 " disable banner
let g:netrw_browse_split=0    "open in prior window
let g:netrw_altv=1            " open split to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" watch me for the changes and re-source file
augroup reload_file " {
  autocmd!
    autocmd BufWritePost mappings.vim source $MYVIMRC
augroup END " }
