""""""""""""""""""""""
" Hotkeys and remaps
""""""""""""""""""""""
inoremap <lt>/ </<C-x><C-o>
let mapleader="\<Space>"
map <leader>m :Mm<ENTER>
map <leader>p :CtrlPMixed<ENTER>
map <leader>w :w<ENTER>
map <leader>c 0wi//<ESC>
map <leader>F :echo @%<ENTER>
map <leader>f <C-f>
map <leader>b <C-b>
map <Tab> gt
map <S-Tab> gT
noremap <C-e> <ESC>

" Line numbers
"""""""""""""""""""""
set relativenumber

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
