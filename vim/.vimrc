autocmd!
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

"" ====================== YouCompleteMe =====================
"Plugin 'Valloric/YouCompleteMe'

"" where to search for .ycm_extra_conf.py if not found
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_register_as_syntastic_checker = 1 "default 1

" ====================== Clang-format ======================
Plugin 'rhysd/vim-clang-format'

" ===================== clang_complete =====================
Plugin 'Rip-Rip/clang_complete'
let g:clang_snippets = 1
let g:clang_user_options = '-std=c++11'

" ========================= Tagbar =========================
Plugin 'majutsushi/tagbar'

" Open tagbar automatically when starting vim with a supported
" file type
au VimEnter * nested :call tagbar#autoopen(1)

" Open tagbar automatically when opening a supported file type
" from within vim
au FileType * nested :call tagbar#autoopen(0)

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

" =================== NERD comment =========================
Plugin 'scrooloose/nerdcommenter'

" ==================== Syntastic ===========================
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = '-std=c++11'

"let g:syntastic_mode_map = {
    "\ "mode": "active",
    "\ "active_filetypes": [],
    "\ "passive_filetypes": ["c", "cpp"] }

" use compilation databases
"let g:syntastic_cpp_clang_check_post_args = ""
"

" ================ Rust autocomplete (racer) ===============
"Plugin 'racer-rust/vim-racer'
"set hidden
"let g:racer_cmd = "/home/ingmar/.cargo/bin/racer"
"let $RUST_SRC_PATH="/home/ingmar/development/projects/sandbox/rust-test"

" All of your Plugins must be added before the following line
call vundle#end()            " required

" =================== Vim config ===========================
filetype plugin indent on
syntax enable

colorscheme solarized

set background=dark
set incsearch
set wildmenu
set wildmode=full

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

let g:vebugger_leader='\'

" Disable arrow keys
"noremap <Up> <NOP>
"noremap <Down> <NOP> 
"noremap <Left> <NOP>
"noremap <Right> <NOP>

" Disable hjkl keys
"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>
