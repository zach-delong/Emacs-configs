""""""""""""""""""""""
" Hotkeys and remaps
""""""""""""""""""""""
inoremap <lt>/ </<C-x><C-o>

""""""""""""""""""""""
" Line numbers
"""""""""""""""""""""
set number

"""""""""""""""""""""
" Pathogen inintialization 
" and setting shell
"""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""
" Changing copy-paste
" To using system buffer
"""""""""""""""""""""""
set clipboard=unnamed
"""""""""""""""""""""""
" Files, backups, undo
"""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""
" Colors
""""""""""""""""""""""
syntax enable
colorscheme solarized
set background=dark

set guifont=Monaco:h13
""""""""""""""""""""""
" Text, tab, and indent
""""""""""""""""""""""
set smarttab
set ai 		"auto-indent
set si 		"smart-indent
set nowrap 	"wrap a line

set autoindent
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

""""""""""""""""""""""
"Custom keybindings 
"""""""""""""""""""""""
map <Space> <leader>                " Remaping leader to space.
map <leader>m :Mm<ENTER>            " Open markdown with leader+m
map <leader>p :CtrlPMixed<ENTER>    " Open CtrlP with leader+p
map <leader>w :w<ENTER>             " Save with leader+w
map <leader>c 0wi//<ESC>            " Comment a line with leader+c
inoremap <C-e> <ESC>                " Add a mapping for iPad to leave remap
