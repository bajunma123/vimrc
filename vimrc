set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nu
set expandtab
set shiftwidth=4
set autoindent
"set smartindent
set tabstop=4
"set textwidth=79
set softtabstop=4
set hlsearch
set incsearch

"show the full file path
set statusline+=%F
set title

"show the airline statusline
set laststatus=2

"shortcuts for the :NERDTree command -- ctrl+a, only in normal mode
nmap <C-a> :NERDTree<cr>

nnoremap q :q<cr>

"set window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
