set nocompatible

"set the runtime path to include Vundle and initialize
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype indent plugin on    " required

syntax enable
syntax on
" set leader key
let mapleader=","
"set colors
set background=dark
colorscheme solarized
set t_CO=256
" set encoding to make things look normal
set enc=utf-8
" show me the numbers
set number
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
" Max colums to search for text in 0 = no limit
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
" Global settings for all files (but may be overridden in ftplugin).
" if you see a tab make it 2 spaces
set tabstop=2
" shift in two spaces
set shiftwidth=2
" no to tabs
set noexpandtab
" softtabs set
set softtabstop=2
" highlight 2 colums past the end of textwidth
set colorcolumn=+1,+2
" save last 1k commands
set history=1000
" set
set list
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
set tags=~/tags
" use standard clipboard 
set clipboard=unnamed
" set split to open right
set splitright
" set vsplit to open bottom
set splitbelow 
" show long lines if it overlaps
set display+=lastline
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

"------------Mappings----------
" map leader ev to edit .vimrc
map <leader>ev :tabedit $MYVIMRC<cr>
" map leader space to :noh
map <leader><space> :noh<cr>
" remap NERDTree toggle
nmap <leader><n> :NERDTreeToggle<CR>
" watch me for the changes and re-source file
augroup autosouring 
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"---------Source files here----------
" Load custom settings
"source ~/.vim/startup/pythonandc.vim
