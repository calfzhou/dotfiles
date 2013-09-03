" Refer: http://blog.sensible.io/2012/10/18/pathogenize-your-vim.html

" Runtime Path Manipulation https://github.com/tpope/vim-pathogen
execute pathogen#infect()

set nocompatible

" Enable overriding settings of vim-sensible
runtime! plugin/sensible.vim
" Put overrides here

syntax on
set nobackup
set number!
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set textwidth=0

" Make the 'case' in the same column with 'switch'
set cinoptions=:N

set nocp

" Share clipboard with Windows
set clipboard+=unnamed

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Title bar and status bar
" Title bar: file path, tag, program name, os
set titlestring=%F\ %h%m%r%w\ -\ %{v:progname}
" Status bar: filename, filename, tag, filetype, encoding, fileformat, currpos, currrelpos, linecnt
set statusline=%f\ %h%m%r%w[%{strlen(&filetype)?&filetype:'none'},%{&encoding},%{&fileformat}]%=%-14.(%l,%c%V%)\ %<%p%%\ \ \ [%L]

" Close toolbar
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Ctags
set tags=tags;

" Set autochdir
nmap <F9> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
