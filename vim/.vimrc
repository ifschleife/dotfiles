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

"Recognize cmake files even if they have a suffix in their name
au BufRead,BufNewFile CMakeLists*.txt set filetype=cmake

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
let g:jedi#show_call_signatures=0
let g:jedi#use_splits_not_buffers="top"

"TagList plugin configuration
" remap open/close to F8
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Open=0
" even process files when taglist is hidden
let Tlist_Process_File_Always=1
" exit vim when only taglist is open
let Tlist_Exit_OnlyWindow=1

