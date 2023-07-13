set nocompatible              " be iMproved, required
filetype off                  " required


filetype plugin indent on 


" My personal vim configuration
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
imap ii <Esc>
map <ENTER> o<esc>
set ai
set hlsearch
set ruler
set nofixendofline
highlight Comment ctermfg=green

" Show the full file path on the bottom line of the window in a vim window
set laststatus=2 " Always show the statusline -> 2
set statusline+=%F " Show the full file path on statusline
