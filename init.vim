set nocompatible
set ruler
set number
set laststatus=2
set undofile  " use undofile
set undodir=~/.vim/undodir
set smarttab
set softtabstop=0
set shiftround
set expandtab
set smartindent
set writebackup
set swapfile
set directory=~/.vim/swapdir
set viminfo+=n~/.vim/viminfo
set signcolumn=yes


if !isdirectory(expand("~/.vim/backupdir"))
  call mkdir(expand("~/.vim/backupdir"))
endif
if !isdirectory(expand("~/.vim/swapdir"))
  call mkdir(expand("~/.vim/swapdir"))
endif
if !isdirectory(expand("~/.vim/undodir"))
  call mkdir(expand("~/.vim/undodir"))
endif

""" plugins
if has('nvim')
  if !filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
    :! curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
else
  if !filereadable(expand("~/.vim/autoload/plug.vim"))
    :! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
endif
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  Plug 'terryma/vim-multiple-cursors'  " <C-n> to select same, <C-x> skip
  Plug 'itchyny/lightline.vim'
call plug#end()

syntax on
colorscheme pablo

let mapleader="\<Space>"
let maplocalleader="\<Space>"

inoremap jk <Esc>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader><Leader>q :qa!<CR>
nnoremap <Leader>e :source $MYVIMRC<CR>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
inoremap <C-b> <Left>
vnoremap <Leader>y "+y
vnoremap <Leader>p "+p
nnoremap <Leader>p "+p
nnoremap <Leader><CR> :<C-u>noh<CR>
nnoremap <C-p> :Files<CR>
