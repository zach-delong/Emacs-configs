""""""""""""""""""""""
" Hotkeys and remaps
""""""""""""""""""""""
"inoremap <lt>/ </<C-x><C-o>
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
map <leader>y ggvG$y
noremap <C-e> <ESC>

" Line numbers
"""""""""""""""""""""
set relativenumber
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

" load plugins for each filetype andd indent from filetype info
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab

""""""""""""""""""""""
" Custom statusline
""""""""""""""""""""""
"set statusline=File\ Name:\ %20f
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=%=
"set statusline+=Branch\ Name:\ %20{fugitive#statusline()}
"set statusline+=\ %m 

""""""""""""""""""""""
" Ultisnip
""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Tweaking LogiPat config so I can use :E for Explore
let g:loaded_logipat = 1


let vim_markdown_preview_hotkey = '<C-m>'
let g:vim_markdown_folding_level = 6
let g:vim_markdown_folding_disabled = 1

autocmd BufRead,BufNewFile *.md set tw=80
autocmd BufRead,BufNewFile *.md set fo+=t


""""""""""""""""""""""
" Writing
""""""""""""""""""""""
set incsearch
set hlsearch

""""""""""""""""""""""
" Backspace stuff
""""""""""""""""""""""
set backspace=indent,eol,start
