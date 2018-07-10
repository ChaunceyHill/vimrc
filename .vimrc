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
au Bufread,BufNewFile *.py :noremap <leader>c mg <bar> 0i#<Esc> <bar>`g
au Bufread,BufNewFile *.py :noremap <leader>C mg <bar> 0li<BS><ESC><bar> `g

" Execute current file, leader r. leader R to save first
au Bufread,BufNewFile *.py :noremap <leader>r :!python % <CR>
au Bufread,BufNewFile *.py :noremap <leader>R :w <CR> :!python % <CR>
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
set number
"set relativenumber
set showmatch
set cursorline
set fileformat=unix

" -----------------------------------------------------------
" normal mode remaps
" -----------------------------------------------------------

" edit vim config in split screen
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" toggle folds with space instead of za undo all folds in a file with leader space
:nnoremap <space> za
:nnoremap <leader><space> zR

" Wrap a word in parenthesis leader 9 or leader 0 to insert at beggining
:nnoremap <leader>9 bi(<Esc>ea)<Esc>
:nnoremap <leader>0 ea)<Esc>bi(<Esc>i

" Easier window switching
:nnoremap <leader>ww <C-W><C-W>
:nnoremap <leader>wh <C-W><C-H>
:nnoremap <leader>wj <C-W><C-J>
:nnoremap <leader>wk <C-W><C-K>
:nnoremap <leader>wl <C-W><C-L>
