set nocompatible

" enable filetype plugins
filetype plugin indent on

" enable syntax highlighting
syntax enable

set encoding=utf8
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab

" keep any buffer open in background
set hidden                  

" wrap lines
set wrap 

" line numbers
set number 
set relativenumber

" always show current position
set ruler 

" default spell checker
set spell

" enough for line numbers + gutter within 80 standard
set textwidth=80

" highlight search hits
set nohlsearch
set incsearch
set linebreak

" wrap around when searching
set wrapscan

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'morhetz/gruvbox'
Plug 'z0mbix/vim-shfmt'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" initialize plugin system
call plug#end()

" =======================================
" theme and appearance
" =======================================
" lightline fix
set laststatus=2

" gruvbox theme config
set background=dark
" let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox

" disable theme background
autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
			\ |    highlight LineNr     ctermbg=NONE guibg=NONE
			\ |    highlight SignColumn ctermbg=NONE guibg=NONE

" =======================================
" custom keybindings
" =======================================
" leader to spacebar
nnoremap <SPACE> <Nop>
map <Space> <Leader>

" nerd tree
map <leader>l :NERDTreeToggle<CR>

" fzf
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader>C        :Colors<CR>
nnoremap <leader><CR>     :Buffers<CR>
nnoremap <leader>fl       :Lines<CR>
nnoremap <leader>ag       :Ag! <C-R><C-W><CR>
nnoremap <leader>m        :History<CR>
