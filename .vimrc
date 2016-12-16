filetype off
set nocompatible
set nu
set autoindent
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab
set nobackup
set colorcolumn=80
set showmode
set laststatus=2
set wildmenu
set ruler
set relativenumber
set showmatch

let mapleader=","

function! ToggleRelativeNumber()
	if &relativenumber == 1
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunction

nmap <F5> :call ToggleRelativeNumber()<CR>
imap <F5> <Esc>:call ToggleRelativeNumber()<CR>a

"------------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

let mapleader=","

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


command NT NERDTree
nmap <Leader>nt :NERDTreeToggle<cr>
nmap <F8> :TagbarToggle<CR>
:let g:NERDTreeWinSize=20
:let g:tagbar_wigth=20

