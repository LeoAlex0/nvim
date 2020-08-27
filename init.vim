call plug#begin('~/.config/nvim/plugs')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tomasr/molokai'

Plug 'jreybert/vimagit'

" Plug 'edkolev/tmuxline.vim'

Plug 'jmcantrell/vim-virtualenv'

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

" Quick Fix (就是JetBrains那套里的Alt+Enter)
nmap <M-CR> :CocFix <CR>

" C/C++文件自动保存时使用clang-format格式化
function OnCPPBufSavePost()
    !clang-format % -i
    e
endfunction
autocmd BufWritePost * silent! call CocAction('format')

" 使用<Tab>选择补全候选项
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" 使用<CR>确认补全候选项
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
