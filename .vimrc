" -----------------------------------------------------------
" This is the vim configuration file of Chauncey Hill
" -----------------------------------------------------------


" -----------------------------------------------------------
" Python settings
" -----------------------------------------------------------

"indents and folding
"au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.py set foldmethod=indent

"Comment or uncomment a line in python
au Bufread,BufNewFile *.py :noremap <leader>c mg0i#<Esc>'g
au Bufread,BufNewFile *.py :noremap <leader>C mg0li<BS><ESC>'g

" -----------------------------------------------------------
" spacing
" -----------------------------------------------------------

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" -----------------------------------------------------------
" general  settings 
" -----------------------------------------------------------

syntax on
"set number
set relativenumber
set showmatch
set cursorline
set fileformat=unix

" -----------------------------------------------------------
" commands
" -----------------------------------------------------------

" edit vim config in split screen
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" toggle folds with space instead of za
" undo all folds in a file with shift space
" also, modify the fold level 
:nnoremap space> za
:nnoremap s-space> zR
:nnoremap space>k zm
:nnoremap space>j zr

" wrap current word in parenthesis
" :nnoremap <leader>9 mg|bi(<Esc>wwi)<Esc>|`g

