" NerdyVIM Configuration
" Author: Nima Naseri
" Description: A minimalist, plugin-free Vim configuration for precision and efficiency.
" Designed for users who value simplicity, speed, and a distraction-free workflow.

" --- Core Settings ---
set nocompatible               " Break free from Vi compatibility for modern features
set encoding=utf-8             " Universal character encoding for all files
set fileformat=unix            " Standardize line endings (LF)
set backspace=indent,eol,start " Full backspace functionality in insert mode
set history=1000               " Extensive command history for productivity
set autoread                   " Auto-reload files modified externally

" --- Precision Formatting ---
set tabstop=4                  " Standardize tab width to 4 spaces
set shiftwidth=4               " Consistent indentation width
set expandtab                  " Replace tabs with spaces for uniformity
set autoindent                 " Automatically align new lines
set smartindent                " Context-aware indentation
set nowrap                     " Disable line wrapping for clarity
set textwidth=80               " Optimal line length for readability
set colorcolumn=81             " Visual guide to maintain line discipline

" --- Efficient Search ---
set incsearch                  " Real-time search feedback
set hlsearch                   " Highlight all search matches
set ignorecase                 " Case-insensitive search by default
set smartcase                  " Case-sensitive search when uppercase is used

" --- Streamlined Interface ---
set number                     " Display line numbers for navigation
set relativenumber             " Relative line numbers for quick jumps
set cursorline                 " Highlight the current line for focus
set showmatch                  " Visual feedback for matching brackets
set laststatus=2               " Always display the status line
set ruler                      " Show cursor position in real-time
set wildmenu                   " Enhanced command-line completion
set wildmode=list:longest      " Intuitive command suggestions
set scrolloff=5                " Maintain context while scrolling

" --- File and Buffer Management ---
set hidden                     " Seamless buffer switching
set confirm                    " Prompt before losing unsaved changes
set nobackup                   " Eliminate backup file clutter
set noswapfile                 " Avoid swap file distractions
set undofile                   " Persistent undo history for safety
set undodir=~/.vim/undodir     " Centralized undo file storage
if !isdirectory(&undodir)      " Automatically create undo directory
    call mkdir(&undodir, 'p', 0700)
endif

" --- Custom Keybindings ---
" Navigate buffers with ease
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" Save and quit efficiently
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Toggle search highlights
nnoremap <Leader>h :set hlsearch!<CR>

" Edit and reload configuration
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" --- Enhanced Writing Features ---
" Auto-wrap text in Markdown and LaTeX
autocmd FileType markdown,tex setlocal wrap linebreak nolist

" Spell checking for polished writing
autocmd FileType markdown,tex setlocal spell spelllang=en_us
autocmd FileType text setlocal spell spelllang=en_us

" --- Syntax and Filetype Support ---
syntax on                   " Enable syntax highlighting
filetype on                 " Detect file types automatically
filetype plugin on          " Load filetype-specific plugins
filetype indent on          " Enable filetype-aware indentation

" --- Utility Commands ---
" Clean trailing whitespace
command! TrimWhitespace %s/\s\+$//e

" --- Final Notes ---
" NerdyVIM is designed for users who demand precision, efficiency, and simplicity.
" It avoids external dependencies, ensuring a consistent experience across environments.