syntax on
filetype plugin indent on
"set background=black

"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=v		" Enable mouse usage (vertical scrolling only)
set number		" Show number
set hlsearch 		" Highlights search item
set shortmess+=I	" Remove splash screen
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set showmode          	" display the current mode
set backspace=2 " make backspace work like most other apps

if has("mouse") " Enable mouse usage
    set mouse=v
endif

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Make the 81st column stand out 
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Make tabs, trailing whitespace, and non-breaking spaces visible 
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Swap : and ; to make colon commands easier to type 
" nnoremap  ;  :
" nnoremap  :  ;

" Swap v and CTRL-V, because Block mode is more useful that Visual mode

" nnoremap    v   <C-V>
" nnoremap <C-V>     v

" vnoremap    v   <C-V>
" vnoremap <C-V>     v

set laststatus=2
