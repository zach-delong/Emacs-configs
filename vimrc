""""""""""""""""""""""
" Hotkeys and remaps
""""""""""""""""""""""
inoremap <lt>/ </<C-x><C-o>

""""""""""""""""""""""
" Line numbers
"""""""""""""""""""""
set number

"""""""""""""""""""""
" Pathogen inintialization and setting shell
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

filetype plugin on
filetype indent on
set smartindent

""""""""""""""""""""""
"Custom keybindings for 
"""""""""""""""""""""""
map <Space> <leader>
map <leader>m	:Mm<ENTER>
map <leader>p :CtrlPMixed<ENTER>
inoremap <C-e> <ESC>

