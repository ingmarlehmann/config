set nocompatible              " be iMproved, required
filetype off                  " required for Vundle

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

" ============== franca .fidl highlight ====================
Plugin 'ingmarlehmann/vim-franca-highlight'

" =============== vim-airline status bar ===================
Plugin 'bling/vim-airline'

" ===================== VimProc ============================
Plugin 'Shougo/vimproc.vim'

" ==================== Vebugger ============================
Plugin 'idanarye/vim-vebugger'

" ===================== Vim ags ============================
Plugin 'rking/ag.vim'

" ==================== Syntastic ===========================
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required

" =================== Vim config ===========================

syntax on
colorscheme solarized

set background=dark
set incsearch
filetype plugin indent on
let g:vebugger_leader='\'

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP> 
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable hjkl keys
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>
