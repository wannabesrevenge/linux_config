" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'moll/vim-node'
Plug 'scrooloose/nerdtree'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'wookiehangover/jshint.vim'
call plug#end()


" Powerline Config
set laststatus=2


" Seoul color settings
let g:seoul256_background = 237
colo seoul256


" NERDTree Config
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 30
map <C-n> :NERDTreeToggle<CR>


" Native Config
" Window Movement
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

set backspace=indent,eol,start
set hidden

set expandtab
set shiftwidth=3

" Javascript files
au Filetype javascript source ~/.vim-javascript

