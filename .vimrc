" No compatibility
set nocompatible
set encoding=utf-8

execute pathogen#infect('~/.vim/bundle/drupalvim/bundle/{}')
execute pathogen#infect()
syntax on
filetype plugin indent on

" editorconfig recommendation
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" make the airline bar always appear
set laststatus=2

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Use fancy arrow symbols in airline
let g:airline_powerline_fonts = 1
set guifont=Liberation_Mono_for_Powerline:h10 

" colors?
set t_Co=256

" Show what mode you are currently in
set showmode
" Show what commands you are typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title

" Highlight current line
set cursorline
" Keep results highlighted after searching...
set hlsearch
" turn of search highlight
nnoremap <leader><space> :nohlsearch<CR>
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase

" allow switching buffers without saving changes
set hidden

nmap [5;5~ :bprevious<CR>
nmap [6;5~ :bnext<CR>
