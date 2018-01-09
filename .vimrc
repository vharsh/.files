set number
set relativenumber
set nocompatible
syntax on
set encoding=utf-8
set hlsearch
set incsearch
set et
set smartindent
set statusline=2
"set foldmethod=
"set guicursor
set colorcolumn=120

" Tab navigation like Firefox.
nnoremap <C-t>   :tabnext<CR>
nnoremap <A-F1> 1gt
nnoremap <A-F2> 2gt
nnoremap <A-F3> 3gt
nnoremap <A-F4> 4gt
nnoremap <A-F5> 5gt
nnoremap <A-F6> 6gt
nnoremap <A-F7> 7gt
nnoremap <A-F8> 8gt
nnoremap <A-F9> 9gt
nnoremap <A-F0> 10gt

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'chriskempson/base16-vim'
Plug 'vim-scripts/c.vim'
Plug 'valloric/youcompleteme'
Plug 'jdsimcoe/abstract.vim'
call plug#end()
set background=light
let g:one_allow_italics = 1
let g:airline#extensions#tabline#enabled = 1
colorscheme one
" Python specific
au BufNewFile,BufRead "*.py"
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" Web specific
au BufNewFile,BufRead "*.js", "*.html", "*.css"
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"python with virtualenv support
"python <<EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
