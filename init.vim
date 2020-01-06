call plug#begin('~/.config/nvim/plugs')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tomasr/molokai'

call plug#end()

" 该死的文件编码问题
set fileencodings=utf-8
set fileencodings=utf-8,gbk

" tab替换
set expandtab
set tabstop=4
set shiftwidth=4

" 相对行号
set rnu

" 颜色主题
syntax on
colorscheme molokai

nmap <M-CR> :CocFix <CR>
