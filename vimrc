" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and courced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.


":scriptnames list all the .vim files that vim loaded for you including your vimrc.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=black

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
if has("mouse") " Enable mouse usage
    set mouse=a
endif
"set mouse=v		" Enable mouse usage (vertical scrolling only)
set number		" Show number
set hlsearch 		" Highlights search item
set shortmess+=I	" Remove splash screen
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set showmode          	" display the current mode

" Super useful! From an idea by Michael Naumann
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

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
