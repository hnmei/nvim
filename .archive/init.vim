"Syntax Highlight
syntax on

"Encoding Settings
set fileencodings=utf-8,ucs-bom,gbl8030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"Line Number
set number relativenumber 

"Indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set listchars=tab:>·
set list

filetype on
filetype indent on 
filetype plugin on

"Brackets Matching
set showmatch

"Mode
set showmode
set showcmd

"Font
set guifont=Firacode

"Color
set t_Co=256

"Plugin Management
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

call plug#end()

"Plugin Settings/ycm
set completeopt-=preview

"PLugin Settings/everforest
set background=dark
let g:everforest_better_performance=1
let g:everforest_backgound='hard'

if has('termguicolors')
	set termguicolors
endif

colorscheme everforest

"Plugin Settings/airline
let g:airline_theme='everforest'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

