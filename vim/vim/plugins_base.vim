" ========================= dirsettings  =======================
Plugin 'chazy/dirsettings'

" ========================= vimwiki  =======================
Plugin 'vimwiki/vimwiki'

" ========================= lightline =======================
Plugin 'itchyny/lightline.vim'

" ======================= vim surround =====================
Plugin 'tpope/vim-surround'

" ======================= easy align  ======================
Plugin 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ===================== Fugitive Git plugin ================
Plugin 'tpope/vim-fugitive'

" ===================== YouCompleteMe =====================
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

" ======================== Supertab ========================
Plugin 'ervandew/supertab'

" ========================= Tagbar =========================
Plugin 'majutsushi/tagbar'

" ========================= CtrlP ==========================
Plugin 'kien/ctrlp.vim'

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
