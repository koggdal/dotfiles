" Base settings
set nocompatible           " Make vim behave in a more useful way
set scrolloff=3            " Start scrolling a few lines before reaching the bottom
set wildmenu               " Tab completion when opening files
set ttyfast                " Optimize for fast terminal connections
set encoding=utf-8 nobomb  " Use UTF-8 without BOM

" Visual elements
set laststatus=2               " Always show the status bar
set number                     " Enable line numbers
set ruler                      " Show cursor position (row/col)
set showcmd                    " Show information about the current command

" Style settings
syntax on                      " Enable syntax highlighting
set background=dark            " Make the background dark
let g:solarized_termcolors=256 " Fancy fallback so that you don't have to change your terminal's color scheme
colorscheme solarized          " The solarized colorscheme

" Whitespace settings
set expandtab
set tabstop=2                   " The width of a tab is two characters
set softtabstop=2               " Hitting backspace removes the same amount of spaces as one tab
set shiftwidth=2                " Indentation should follow tabstop, or stuff will have different indentation
set backspace=indent,eol,start  " Enable backspace in insert mode
set noeol                       " Don't add empty newlines at the end of files

" Searching
set hlsearch    " Highlight matches
set incsearch   " Incremental searching while typing the search keywords
set ignorecase  " Case insenstive...
set smartcase   " ... unless they contain at least one capital letter

" Automatic commands
if has("autocmd")
	filetype on                                                             " Enable file type detection
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript    " Treat .json files as .js
	autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal colorcolumn=72,80    " Put line limit rulers for commit messages
endif

