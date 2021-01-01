set number
set tabstop=4
set expandtab
filetype indent on
set autoindent


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

        Plugin 'preservim/nerdtree'
        Plugin 'VundleVim/Vundle.vim'
        Plugin 'sickill/vim-monokai'

call vundle#end()
filetype plugin indent on

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


syntax enable
colorscheme monokai
