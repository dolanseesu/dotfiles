"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"      Simon Hensel 
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/dolanseesu/dotfiles
"
" Sections (WIP):
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

execute pathogen#infect()

let g:lightline = { 'colorscheme': 'deus', }

set laststatus=2
set noshowmode
set number
syntax on
filetype plugin indent on
set timeoutlen=1000 ttimeoutlen=10

colorscheme gruvbox
set background=dark

hi Normal guibg=NONE ctermbg=None
