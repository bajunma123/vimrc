"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

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

Plugin 'scrooloose/nerdcommenter'

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
set paste       

"show the full file path
set statusline+=%F
set title


" for ctags
" This will look in the current directory for "tags", and work up the tree
" towards root until one is found. IOW, you can be anywhere in your source
" tree instead of just the root of it.
set tags=./tags;/

"This will make Control-] pop open a window and show the tag there. The
":ptjump command shows the tag in a preview window without changing the
"current buffer or your cursor position.
nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

"Ctrl+\ - Open the definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"You can then open and close Tagbar by simply pressing the <F8> key
nnoremap <silent> <F8> :TagbarToggle<CR>

"tags are sorted according to their order in the source file
let g:tagbar_sort = 0 

"And if you want to open Tagbar only for specific filetypes, not for all of the
"supported ones:
autocmd FileType c,cpp nested :TagbarOpen

"Show absolute line numbers.
let g:tagbar_show_linenumbers = 1 

"let g:airline#extensions#tagbar#enabled = 1

"let g:airline#extensions#tagbar#flags = 'f'

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

" settings for the nerdcommenter

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" setting for the mouse
" set mouse=a
set autoread
