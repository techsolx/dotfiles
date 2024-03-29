"----------Settings----------
" play nice, with nice thing
set nocompatible
" my favorite set command show me the number
set relativenumber
set number
" set encoding to make things look normal
set enc=utf-8
" show me the cursor
set cursorline
" hide the buffer
"set hidden
" show the command line at the bottom of the screen
set showcmd
" add the ruler row and column
set ruler
" highlight all searcheall searche
set hlsearch
" highlight search as I type
set incsearch
" Search down subfolder
set path+=**
" help me by using tab completion on the menu
set wildmenu
" Max colums to search for text in 0 = no limit
set synmaxcol=0
" uhex to display non-ascii char as hex
set display=uhex
" Set abbreviations for alert
set shortmess=aAIsT
" give me some space
set cmdheight=2
" hang it out
set nowrap
if &diff
  set wrap
endif
" open pop-up menu
set completeopt=menu
" backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set backspace=2
" fill folds with verticle line
set fillchars=vert:¦
" show me one column when folded
set foldcolumn=1
" Global settings for all files (but may be overridden in ftplugin).
" set tabs to this number of space
set tabstop=4
" let shiftwidth match tab
set shiftwidth=4
" softtabs set to negative to match shiftwidth
set softtabstop=4
" no to tab
set expandtab
" textwidth to 79 this bugs me in global settings
" set textwidth=79
" no indent after #
"" set nosmartindent
"" set cindent
"" set cinkeys-=0#
"" set indentkeys-=0#
"" autocmd FileType * set cindent "some file types override it
"
" highlight 2 colums past the end of textwidth
set colorcolumn=+1,+2
" save last 1k command
set history=1000
" set up listchars to show me stuff
set nolist
set listchars=space:␣
set listchars=tab:▸\
set listchars=trail:-
set listchars=extends:>
set listchars=precedes:<
set listchars=eol:¬
" show me 2 lines of statu
set laststatus=2
" preferred file type
set ffs=unix
" set visual bell
set vb
" reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
" I need to figure out how to set my tags better
set tags=./tags;/
" use standard clipboard
set clipboard=unnamed
" yank Ctl-c to the sytem clipboard
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
" set split to open right
set splitright
" set vsplit to open bottom
set splitbelow
" show long lines if it overlap
set display+=lastline
" Quickly time out on keycodes, but never time out on mapping
set notimeout ttimeout ttimeoutlen=200
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

" flag trailing whitespace
au BufNewFile BufRead *.py,*.pyw,*.c,*.h,*.vim match BadWhitespace /\s\+$/

" :: Mako Templates ::
au BufNewFile BufRead *.mako set ft=yaml syntax=yaml tabstop=2 shiftwidth=2 softtabstop=2

" :: JSON ::
au BufNewFile BufRead *.json set ft=json syntax=json tabstop=2 shiftwidth=2 softtabstop=2 expandtab
" au BufNewFile BufRead *.json execute '%!python -m json.tool' | w

" :: YAML ::
au BufNewFile BufRead *.{yaml,yml} set ft=yaml syntax=yaml tabstop=2 shiftwidth=2 softtabstop=2 expandtab indentkeys-=<:>

" :: jinja ::
au BufNewFile BufRead *.jinja,*.jinja2 set ft=python syntax=python

" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

" Run buffer in python using F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" watch me for the changes and re-source file
augroup reload_file " {
  autocmd!
    autocmd BufWritePost settings.vim source $MYVIMRC
augroup END " }
