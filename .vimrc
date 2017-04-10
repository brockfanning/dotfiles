execute pathogen#infect('~/.vim/bundle/drupalvim/bundle/{}')
execute pathogen#infect()
syntax on
filetype plugin indent on

" editorconfig recommendation
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" make the airline bar always appear
set laststatus=2
