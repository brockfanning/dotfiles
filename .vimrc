" No compatibility
set nocompatible
set encoding=utf-8

" Need to set this before plugins to have it work
let mapleader = "," " sets leader to comma

execute pathogen#infect('~/.vim/bundle/drupalvim/bundle/{}')
execute pathogen#infect()
syntax on
filetype plugin indent on

" Turn of swapfile creation
set noswapfile

" Round indent to nearest multiple of 4
set shiftround
" No line-wrapping
set nowrap

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Underscores denote words
set iskeyword-=_

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

if exists("+colorcolumn")
  set colorcolumn=81
endif

" allow switching buffers without saving changes
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

nnoremap <leader>g :vimgrep /
