" Refer: http://blog.sensible.io/2012/10/18/pathogenize-your-vim.html

" Runtime Path Manipulation https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Enable overriding settings of vim-sensible
runtime! plugin/sensible.vim
" Put overrides here
