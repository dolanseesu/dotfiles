"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"     ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄
"    ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█
"     ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄
"      ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"       ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"       ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"       ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒
"         ░░   ▒ ░░      ░     ░░   ░ ░
"          ░   ░         ░      ░     ░ ░
"         ░                           ░
"
" Maintainer: 
"      Simon Hensel 
"      https://github.com/dolanseesu/dotfiles
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load Plugins using vim-plug
" more info: https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

Plug 'sainnhe/gruvbox-material'
"Plug 'franbach/miramare'

call plug#end()

" General
syntax on
filetype plugin indent on
set encoding=utf-8
set history=500
set nocompatible
set title
set mouse+=a
set ruler
set cursorline

" disable annoying alerts
set noerrorbells
set novisualbell

" adjust tab behaviour and indentation
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

" line numbers and wrapping
set number relativenumber
set wrap
set linebreak

" Disable backups and swap files
set noswapfile
set nowb
set nobackup

" adjust search
set nohlsearch
set incsearch
set ignorecase
set smartcase
" this would remap :nohlsearch to the space-key
":nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" show matching brackets
set showmatch

" let backspace behave like it should
set backspace=indent,eol,start

set laststatus=2
set hidden
set noshowmode
set timeoutlen=1000 ttimeoutlen=10

" autocomplete
set wildmenu
set wildmode=longest,list,full

" disable automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" change split behaviour
set splitbelow splitright

" Optimize shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" disable Q in normal mode
nmap Q <Nop>

" Colors
set termguicolors
set background=dark
" For more info, see :help gruvbox-material.txt
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 0
let g:gruvbox_material_lightline_disable_bold = 1
let g:gruvbox_material_palette = 'material'
"let g:miramare_enable_italic = 1
colorscheme gruvbox-material

" modify lightline to show the absolute file path
let g:lightline = { 'colorscheme': 'gruvbox_material', 
                    \ 'active': {
                    \ 'left': [['mode', 'paste'], ['readonly', 'absolutepath', 'modified']],}}

hi Normal guibg=NONE ctermbg=235

" Autocomplete HTML/CSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Autocomplete Python
"let g:pydiction_location = '/home/simon/.vim/bundle/pydiction/complete-dict'
"let g:pydiction_menu_height = 5
