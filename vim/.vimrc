set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set foldmethod=syntax
set foldnestmax=1
set tags=./tags
set autochdir
"set textwidth=80
set formatoptions+=l
set lbr 
set hlsearch
set ruler
set backspace=2
"set paste
set nomousehide

filetype on
syntax on


"Recognize *.md as markdown
au BufRead,BufNewFile *.md set filetype=markdown

"Recognize *.qml as javascript
au BufRead,BufNewFile *.qml set filetype=javascript


"Color Schemes-----------------------------------------------------------------

"colors koehler
colors molokai
"colors wombat256
"colors moria
"let moria_style="black"
"let moria_monochrome=1
"let moria_fontface="mixed"


"Plugins-----------------------------------------------------------------------

"Pathogen plugin manager
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on

"Python Auto-Completion: Jedi
let g:jedi#popup_on_dot=0

"TagList plugin configuration
let Tlist_Auto_Open=1
let Tlist_Exit_OnlyWindow=1

