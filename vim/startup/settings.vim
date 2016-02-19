"------------------------------------------------------------
" settings file
" Enable syntax highlighting
syntax enable
syntax on
" set leader key
let mapleader=","
" set encoding to make things look normal
set enc=utf-8
" use this dictionary
set dict=/usr/share/dict/words
" allow saving buffers with hidden
set hidden
" show me the cursor
set cursorline
" show the command line at the bottom of the screen
set showcmd
" add the ruler row and column
set ruler
" highlight search as I type
set incsearch
" help me by using tab completion on the menu
set wildmenu
" 
set synmaxcol=0
" uhex to display non-ascii char as hex
set display=uhex
" Set abbreviations for alerts
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
" my favorite set command show me the numbers
set number
" play nice, with nice things
set nocompatible
" fill folds with verticle lines
set fillchars=vert:¦
" show me one column when folded
set foldcolumn=1
" no to tabs
set noexpandtab
" if you see a tab make it four spaces
set tabstop=4
" shift in four spaces
set shiftwidth=4
" softtabs set
set softtabstop=4
" highlight 2 colums past the end of textwidth
set colorcolumn=+1,+2
set history=1000
set nolist
" set up listchars to show me stuff
set listchars=tab:>-
set listchars=trail:-
set listchars=extends:>
set listchars=precedes:<
set listchars=eol:¬
" show me 2 lines of status
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
set tags=~/.vim/tags/tags
" use standard clipboard 
set clipboard=unnamed
"------------------------------------------------------------
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Quickly time out on keycodes, but never time out on mappings
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

" start NERDTree if nothing on the edit line
function! StartUp()                                                                                                                                                                                         
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()

" set NERDTree to auto close on open
" let NERDTreeQuitOnOpen = 1

" map leader n to toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" make snipmate work with html and php
au BufRead *.php set ft=php.laravel
au BufNewFile *.php set ft=php.laravel

" snimpate for laravel
"autocmd FileType php set ft=php.laravel
