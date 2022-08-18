set exrc										" use .vimrc in project directory
set guicursor=							" always use gui cursor
set number                  " add line numbers
set relativenumber					" relative line numbers
set nu											" show current line number
set showmatch               " show matching
set mouse=v                 " middle-click paste with 
set nohlsearch              " highlight search 
set hidden									" keep any buffer open in background
set incsearch               " incremental search
set noerrorbells						" protect ears lol
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent
set scrolloff=8							" auto scroll when reach the edge
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set colorcolumn=80					" show line for 80 column border
set signcolumn=yes					" for linting
filetype plugin on
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
"set noswapfile							" disable creating swap file
set backupdir=~/.cache/nvim " directory to store backup files.


