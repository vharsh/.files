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
" Changing the default location of swap file creation in VIM
set directory=$HOME/.vim/swapfiles//
"set foldmethod=
"set guicursor
set colorcolumn=120
filetype plugin on
filetype indent on
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
nmap  <F8> :NERDTreeToggle<CR>
nmap <F2>  :GoRun<CR>
au BufRead,BufNewFile Jenkinsfile       set filetype=groovy
au BufRead,BufNewFile *.hbs     set filetype=html
au BufRead,BufRead *.md         set spell
call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'Valloric/MatchTagAlways'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'andrewstuart/vim-kubernetes'
"Plug 'sebdah/vim-delve'
"Plug 'majutsushi/tagbar' # for a list of variables, requires some external
"dependencies
"Plug 'mileszs/ack.vim' for grep-ing things in vim
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'
Plug 'valloric/youcompleteme'
Plug 'jdsimcoe/abstract.vim'
call plug#end()
set background=dark
colorscheme dracula
let g:one_allow_italics = 1
let g:airline#extensions#tabline#enabled = 1
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
au BufNewFile,BufRead "*.yml", "*.yaml"
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
