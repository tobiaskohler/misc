set number
set tabstop=4
set expandtab
set hlsearch
filetype indent on
set autoindent


set nocompatible
filetype off
filetype plugin indent on

call plug#begin()
"Organisation 'n stuff
Plug 'https://github.com/preservim/NERDTree.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/tpope/vim-fugitive.git'

"Colorschemes
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/sickill/vim-monokai.git'
Plug 'https://github.com/dracula/vim.git'
Plug 'https://github.com/NLKNguyen/papercolor-theme.git'

"Language Servcers
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()



" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


syntax enable
