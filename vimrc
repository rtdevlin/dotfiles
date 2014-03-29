set nocompatible

call pathogen#infect()

syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2

set expandtab
set smarttab

set autoindent
set smartindent

set incsearch

set hidden

set showcmd
set showmode

set wildmenu
set wildmode=list:longest,full

set foldmethod=syntax

"ignore case when all lower
set ic
set scs

"move to front/end of line
nnoremap <C-h> ^
nnoremap <C-l> $
vnoremap <C-h> ^
vnoremap <C-l> $

"add line below/above cursor
nnoremap <ENTER> o<ESC>k
nnoremap <Bslash><Bslash> O<ESC>j

"map space to insert space
"map <S-SPACE> i <ESC>
nnoremap <SPACE> i <ESC>h

"map jj to return to normal mode
";; for the same, but one char left
inoremap jj <ESC>
inoremap ;; <ESC>la

"switch ; and : mappings
nnoremap ; :
nnoremap : ; 

autocmd FileType css setlocal foldmethod=indent shiftwidth=2 tabstop=2

"text folding in coffeescript
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable


"todo ruby into string #{}
"todo comment current line and copy below 
"todo switch assignment around = 


"testing this one out
"trying to speed up large files
let loaded_matchparen = 1


"hamlc syntax highlighting
au BufRead,BufNewFile *.hamlc set ft=haml

"thor syntax highlighting
au BufRead,BufNewFile *.thor set ft=ruby

" c-s to save file
nnoremap <C-S> :w<CR>
"" nnoremap <C-s> :w<CR>
"" nmap <C-s> :w<CR>
"" imap <C-s> <Esc>:w<CR>a
"" imap <C-s> <Esc><c-s>
