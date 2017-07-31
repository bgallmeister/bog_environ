set autoindent
set nowrapscan
set tabstop=4
set expandtab
set showmatch
syntax on
set hlsearch
" This sets the number of terminal colors to 0.  I give up, time for colored syntax highlighting.
" set t_Co=0
set tw=79
execute pathogen#infect()
filetype plugin indent on
colorscheme bog " Based on the 'minty' colorscheme at vim.org;  just copied here for ease of installation
