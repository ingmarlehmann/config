autocmd!
set nocompatible              " be iMproved, required
filetype off                  " required for Vundle

" =================== Vundle Plugin Manager ===============
" set the runtime path to include Vundle and initialize
set shell=/bin/bash
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

for f in glob('~/.config/vim/*.vim', 0, 1)
    execute 'source' f
endfor

" All of your Plugins must be added before the following line
call vundle#end()            " required

" =================== netrw config ===========================
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
map <C-n> :call ToggleNetrw()<CR>

" =================== Vim config ===========================
filetype plugin indent on
syntax enable

"colorscheme solarized8_dark

set ruler
set background=dark
set incsearch
set wildmenu
set wildmode=full
set nowrap
set laststatus=2
set statusline=%=%m\ %c\ %P\ %f\

set autoindent
set expandtab

" size of a hard tabstop
set tabstop=4
"
" size of an "indent"
set shiftwidth=4
"
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" let me backspace out what i want please
set backspace=indent,eol,start

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP> 
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable hjkl keys
"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>
