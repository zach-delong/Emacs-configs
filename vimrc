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
"""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""
" Files, backups, undo
"""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""
" Colors
""""""""""""""""""""""
"colorscheme jellybeans
"colorscheme atom-dark
syntax enable
colorscheme solarized
set background=dark

""""""""""""""""""""""
" Text, tab, and indent
""""""""""""""""""""""
set smarttab
set ai 		"auto-indent
set si 		"smart-indent
set nowrap 	"wrap a line

filetype plugin on
filetype indent on
set smartindent
