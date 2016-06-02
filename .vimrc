" Plugins
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'junegunn/seoul256.vim'
Plug 'moll/vim-node'
Plug 'scrooloose/nerdtree'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()


" YCM Autoclose Preview Window
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Snippets Config
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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

" Set fold toggle to 'f'
map f za

set backspace=indent,eol,start
set hidden
set nowrap

" Tab settings
set shiftwidth=3
set tabstop=3
set expandtab

set colorcolumn=100
set hlsearch incsearch

au BufReadPost *.ejs set syntax=html

" Javascript files
au Filetype javascript source ~/.vim-javascript

au Filetype python setl sw=2 sts=2 et
