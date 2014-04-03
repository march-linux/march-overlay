" bundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_dotfiles=1
let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
map <Leader>n <plug>NERDTreeTabsToggle<CR>
Plugin 'mileszs/ack.vim'
let g:ackprg='ag --nogroup --nocolor --column'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_autosave_periodic=1
let g:session_default_to_last=1

" basic
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
set shiftround
set autoindent
set smarttab
set smartindent

" mswin
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
