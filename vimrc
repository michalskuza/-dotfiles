syntax on		" enable syntax processing

"Spaces & Tabs

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"UI Config

"set background=dark    " background colour
set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline         " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
:let loaded_matchparen = 1 "no highlight matching [{()}]
set shortmess+=I	" Remove splash screen
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set showmode          	" display the current mode
set laststatus=2 "shows last status

" Make the 81st column stand out 
highlight ColorColumn ctermbg=green
call matchadd('ColorColumn', '\%81v', 100)

"" Make tabs, trailing whitespace, and non-breaking spaces visible 
"exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
"set list

if has("mouse") " Enable mouse usage
    set mouse=v
endif

"Searching

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>		"turn off search highlight

"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"Folding

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
"nnoremap <space> za	" space open/closes folds
set foldmethod=indent   " fold based on indent level


"Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
"nnoremap B ^
"nnoremap E $

" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>

nnoremap gV `[v`] " highlight last inserted text


"Custom

set backspace=2 " make backspace work like most other apps

" Toggle auto-indenting for code paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Swap : and ; to make colon commands easier to type 
" nnoremap  ;  :
" nnoremap  :  ;

" Swap v and CTRL-V, because Block mode is more useful that Visual mode
" nnoremap    v   <C-V>
" nnoremap <C-V>     v

" vnoremap    v   <C-V>
" vnoremap <C-V>     v
