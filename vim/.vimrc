set nocompatible              " be iMproved, required

filetype off                  " required

syntax enable
colorscheme solarized

set background=dark

" =================== Vundle Plugin Manager ===============
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ========================= NERDTree =======================
Plugin 'scrooloose/nerdtree'

" Open NERDTree automatically if no filename
" was specified when launching vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only remaining window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" ===================== Fugitive Git plugin ================
Plugin 'tpope/vim-fugitive'

" ==================== Solarized color theme ===============
Plugin 'altercation/vim-colors-solarized'

" ====================== YouCompleteMe =====================
Plugin 'Valloric/YouCompleteMe'

" ====================== Clang-format ======================
Plugin 'rhysd/vim-clang-format'

" ========================= Tagbar =========================
Plugin 'majutsushi/tagbar'

" ========================= CtrlP ==========================
Plugin 'kien/ctrlp.vim'

" ============= franca .fidl highlight =====================
Plugin 'ingmarolsson/vim-franca-highlight'
autocmd BufRead,BufNewFile *.fidl set filetype=fidl

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
