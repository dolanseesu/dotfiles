"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"      Simon Hensel 
"      https://github.com/dolanseesu/dotfiles
"
" Sections:
"    -> Pathogen
"    -> Lightline
"    -> General
"    -> Colors
"    -> Autocomplete (HTML, CSS, Python)
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Pathogen
execute pathogen#infect()


"Lightline
let g:lightline = { 'colorscheme': 'deus', }


"General
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
"set undodir=~/.vim/undodir
"set undofile

set laststatus=2
set noshowmode
set timeoutlen=1000 ttimeoutlen=10


"Colors
colorscheme gruvbox
set background=dark

hi Normal guibg=NONE ctermbg=None


"Autocomplete HTML/CSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Autocomplete Python
filetype plugin indent on
let g:pydiction_location = '/home/simon/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 5
