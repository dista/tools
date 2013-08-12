execute pathogen#infect()

" set nocompatible
filetype plugin indent on
syntax on

" always show status bar
:set laststatus=2

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" tabs to space
set expandtab
set tabstop=4
set shiftwidth=4
autocmd FileType make setlocal noexpandtab

" indent
set smartindent

let NERDTreeIgnore = ['\.lo$', '\.la$', '\.pyc$', '\.o$', '\.d$']

" nerd tree sets
map <F5> :NERDTreeToggle<CR>

" tag list plugin
map <F4> :TlistToggle<CR>

highlight Comment ctermfg=blue
set nu!

au BufNewFile,BufRead *.ipp set filetype=cpp

" set this, also change ~/.profile to enable 256 color
set t_Co=256

colorscheme wombat256
"colorscheme summerfruit256
"colorscheme beauty256
"colorscheme google
" :colorscheme xoria256
" :colorscheme LAZY
" :colorscheme jellybeans

" only do this part when compiled with support for autocommands
if has("autocmd")
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endi

" protobuf
augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
