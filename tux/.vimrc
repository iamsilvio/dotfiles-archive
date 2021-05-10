"load system defaults
if filereadable(expand('$VIMRUNTIME/defaults.vim'))
	unlet! g:skip_defaults_vim
	source $VIMRUNTIME/defaults.vim
endif

"plugin settings
"----------------

" Install and run vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'

call plug#end()

"regular settings
"----------------
set shm+=I "disable welcome screen
"set t_kb=^?
set t_kb=

" ui
set number    "show line numbers
set wildmenu  "enable a menu that shows tab completion options in the status bar
set showmatch "highlights matching brackets on cursor hover
set ruler     "show cursor position in status bar
set showcmd   "shows the normal mode command before it gets executed
set visualbell " Blink cursor on error instead of beeping (grr)

set listchars=tab:▸\ ,eol:¬  " Visualize tabs and newlines

" encoding/format
set encoding=utf-8
set fileformats=unix,dos,mac

" searching
set hlsearch    "highlights searches
set incsearch   "incremental search (searches character by character)
set ignorecase  "ignores the case of a search
set smartcase   "only ignores case if there are no capital letters in search (only works after ignorecase has been set)

" indent
set tabstop=2     "the amount of spaces that vim will equate to a tab character
set softtabstop=2 "like tabstop, but for editing operations (insert mode)
set shiftwidth=2  "used for autoindent and << and >> operators in normal mode
set autoindent    "copies indent from current line to the next line
set expandtab     "tabs will expand to whitespace characters

"set backspace=indent,eol,start

" key timeout values
set esckeys         "allows function keys to be recognized in Insert mode
set ttimeoutlen=20  "timeout for a key code mapping
set timeoutlen=1000 "time(ms) to wait for key mappings

" allow syntax and filetype plugins
syntax enable               "turn syntax highlighting on
filetype plugin indent on   "load plugin and indent files associated a detected filetype
runtime macros/matchit.vim  "allows jumping between brackets with % in normal mode

" if a line is longer than 80 characters the line end is marked as error
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"plugin configuration
"----------------
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.vim/UltiSnips/']

let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
