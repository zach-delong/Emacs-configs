""""""""""""""""""""""
" Hotkeys and remaps
""""""""""""""""""""""
inoremap <lt>/ </<C-x><C-o>
let mapleader="\<Space>"
map <leader>m :Mm<ENTER>
map <leader>p :CtrlPMixed<ENTER>
map <leader>w :w<ENTER>
map <leader>c ^i//<ESC>
map <leader>F :echo @%<ENTER>
map <leader>f <C-f>
map <leader>b <C-b>
map <Tab> gt
map <S-Tab> gT
map <leader>C :!ctags -R .<ENTER>
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
"colorscheme solarized
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
" Ultisnip
""""""""""""""""""""""
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
