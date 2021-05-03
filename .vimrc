"some settings for Vundle to work properly
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim


" Vundle Plugin Calls
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancerhigh light-all-pragmas moose test-more try-tiny' }
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on 


" " My personal vim configuration
syntax on
set tabstop=4
imap ii <esc>
map <ENTER> o<esc>
set shiftwidth=4
set expandtab
set ai
set number relativenumber
set hlsearch
set ruler
highlight Comment ctermfg=green
"
