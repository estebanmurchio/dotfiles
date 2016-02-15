" pathogen
runtime! bundle/vim-pathogen/autoload/pathogen.vim
silent! execute pathogen#infect()

if has('autocmd')
  filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set nocompatible            " essential
set autoindent              " automatic indent new lines
set autoread                " reload files (no local changes only)
set backspace=indent,eol,start
if exists('+breakindent')
  set breakindent showbreak=\ +
endif
set ch=1 "cmdheight=2
set complete-=i
set display=lastline
if has("eval")
  let &fileencodings = substitute(&fileencodings,"latin1","cp1252","")
endif
set fileformats=unix,dos,mac
set foldmethod=marker
set foldopen+=jump
set history=1000 "200
set incsearch       " Incremental search
set laststatus=2    " Always show status line
set lazyredraw
set linebreak
set listchars=tab:▸\ ,extends:»,precedes:«,nbsp:+,eol:¬

set t_Co=256

set isk+=_,$,@,%,#,-        " none word dividers
set list                    " show trailing whiteshace and tabs
set nobackup                " do not keep backups after close
set mat=5                   " duration to show matching brace (1/10 sec)
set noshowcmd               " don't display incomplete commands
set nostartofline           " don't jump to the start of line when scrolling
set noswapfile              " don't keep swp files either
set nowrap                  " do not wrap lines
set nowritebackup           " do not keep a backup while working
set number                  " line numbers
set showmatch               " brackets/braces that is
set smartcase
set smartindent             " be smart about it
set tabpagemax=50
set ttimeout
set ttimeoutlen=50          " Make Esc work faster
set timeoutlen=1200 " A little bit more time for macros
set wildmenu                " turn on wild menu

if (&t_Co > 2 || has("gui_running")) && has("syntax")
  if exists("syntax_on") || exists("syntax_manual")
  else
    syntax on
  endif
endif

"let g:molokai_Original = 1
"let g:rehash256 = 1
let g:Powerline_symbols = 'fancy'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"autocmd vimenter * NERDTree

color skittles_berry

call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

"set background=dark
"set laststatus=2
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" load settings
source ~/.vim/mappings.vim

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" syntax checker
source ~/.vim/bundle/syntastic/syntax_checkers/javascript/jslint.vim
