
syntax on
set t_Co=256
set nu!

set laststatus=2
set expandtab
set tabstop=2
set shiftwidth=2
autocmd FileType make setlocal noexpandtab
"autocmd FileType python set tabstop=4
"autocmd FileType python set shiftwidth=4

call plug#begin('~/.vim/plugged')
" add plug here
" example
" Plug 'junegunn/vim-easy-align'
" Reload .vimrc and :PlugInstall to install plugins.
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()

let g:pymode_indent = 1
let g:pymode_rope = 1
" :PymodeLintAuto to run autopep8
