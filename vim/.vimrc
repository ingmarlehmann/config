autocmd!
set nocompatible              " be iMproved, required
filetype off                  " required for Vundle

set guioptions-=m
set guioptions-=T
set guioptions-=r

nmap <C-V> "+gP
imap <C-V><ESC><C-V>i
vmap <C-C> "+y
" =================== Vundle Plugin Manager ===============
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ========================= NERDTree =======================
Plugin 'scrooloose/nerdtree'

" Close vim if the only remaining window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" ======================= vim-bitbake ======================
Plugin 'kergoth/vim-bitbake'

" ======================= hacker news ======================
Plugin 'ryanss/vim-hackernews'

" ======================= vim surround =====================
Plugin 'tpope/vim-surround'

" ======================= easy align  ======================
Plugin 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ======================== auto pairs ======================
Plugin 'jiangmiao/auto-pairs'

" ===================== a.vim: h/cpp switch ================
Plugin 'vim-scripts/a.vim'

" ===================== Fugitive Git plugin ================
Plugin 'tpope/vim-fugitive'

" ==================== Solarized color theme ===============
"Plugin 'altercation/vim-colors-solarized'

" ==================== nord color theme ===============
Plugin 'arcticicestudio/nord-vim'

" ========== Color coded: C/C++ syntax highlighting ========
"Plugin 'jeaye/color_coded'

"" ===================== YouCompleteMe =====================
Plugin 'Valloric/YouCompleteMe'

" where to search for .ycm_extra_conf.py if not found
let g:ycm_global_ycm_extra_conf = '/home/ingmar/.ycm_extra_conf.py'  
let g:ycm_confirm_extra_conf = 1
let g:ycm_register_as_syntastic_checker = 1 "default 1

" ======================= Ultisnips ========================
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-W>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ======================== vim-cmake ========================
Plugin 'vhdirk/vim-cmake'

" ======================== Supertab ========================
Plugin 'ervandew/supertab'

" ====================== Clang-format ======================
Plugin 'rhysd/vim-clang-format'

" ===================== clang_complete =====================
"Plugin 'Rip-Rip/clang_complete'
"let g:clang_snippets = 1
"let g:clang_user_options = '-std=c++11'

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
let g:vebugger_leader='\'

" ===================== Vim ags ============================
Plugin 'rking/ag.vim'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

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

colorscheme nord

set ruler
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
