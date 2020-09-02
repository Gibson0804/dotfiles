"显示行号
set nu 
syntax enable

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set noexpandtab
set autoindent

"trail行尾多余空格
set listchars=tab:>-,trail:-
set list

"忽略文件名大小写
set wildignorecase
set ignorecase

"显示状态栏
set laststatus=2
hi StatusLine             ctermfg=LightYellow     ctermbg=DarkGrey      cterm=bold  
hi StatusLineNC              ctermfg=LightYellow     ctermbg=DarkGrey      cterm=bold  
"TabLine(普通标签样式)/TabLineSel(选中状态标签的样式)
highlight TabLine term=underline cterm=bold   ctermbg=DarkGrey ctermfg=LightYellow
highlight TabLineSel term=bold cterm=bold    ctermfg=DarkGrey

nmap \\  oprint_r();exit;<ESC>hhhhhhi
let mapleader='\'
nmap <leader>if  iif () <CR>{};
imap <leader>u   <ESC>ui

nmap tt :tabnew 

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

set tags=tags
set tags+=./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags

"vim使用鼠标
set mouse=a

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/AutoComplPop/'

call plug#end()

