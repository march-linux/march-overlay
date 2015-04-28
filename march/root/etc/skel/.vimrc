" bundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType='context'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
map <Leader>n <plug>NERDTreeTabsToggle<CR>
Plugin 'mileszs/ack.vim'
let g:ackprg='pt --nogroup --nocolor'
Plugin 'fatih/vim-go'
let g:go_fmt_fail_silently=1
let g:go_fmt_command='goimports'
Plugin 'tomasr/molokai'
Plugin 'IndexedSearch'
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
call vundle#end()

" basic
set mouse=a
set encoding=utf-8
set nobackup
set noswapfile
set backspace=2
filetype plugin indent on

" look
syntax on
set number
set wildmenu
set wildmode=list:longest,full
set completeopt=longest,menuone
set laststatus=2
colorscheme molokai

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
set scrolloff=5
nnoremap / /\v

" indent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set autoindent
set smarttab

" mswin
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
