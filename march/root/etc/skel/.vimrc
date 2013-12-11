" basic
set nocompatible
set mouse=a
set encoding=utf-8
set nobackup
set noswapfile
filetype plugin indent on

" look
syntax on
set number
set wildmenu
set wildmode=list:longest,full
set completeopt=longest,menuone
set laststatus=2

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic

" indent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set shiftround
set autoindent
set smarttab
set smartindent

" bundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
let g:ctrlp_dotfiles=1
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/nerdtree'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files=1
Bundle 'mileszs/ack.vim'
