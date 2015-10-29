version 7.4
set nocompatible
filetype off
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=pl
set history=50
set nomodeline
set printoptions=paper:a4
set completeopt=menu,menuone
set ruler
set runtimepath=~/.vim,~/.vim/bundle,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" vim: set ft=vim :


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'
Plugin 'MattesGroeger/vim-bookmarks' 
Plugin 'tpope/vim-fugitive' "git integration
Plugin 'scrooloose/nerdtree'
"Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'bling/vim-airline'
"Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'pangloss/vim-javascript'
"Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neocomplcache.vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'tomtom/tcomment_vim'
Plugin 'othree/html5.vim'
Plugin 'matchit.zip'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-manager'
Plugin 'zedr/zope-snipmate-bundle'
Plugin 'SirVer/ultisnips'
"Required for snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
"Required for snipmate
Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Python autocompletion
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'dbsr/vimpy'
Plugin 'nvie/vim-flake8'
Plugin 'hdima/python-syntax'
Plugin 'sjl/gundo.vim'
"Plugin 'lervag/vim-latex'
" The bundles you install will be listed here

let python_highlight_all = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:snips_author="Maciej Puczkowski"
let g:snips_email="puczkowski@gmail.com"
let g:snips_github="-"
let g:ultisnips_python_style="doxygen"
let g:vimpy_prompt_resolve = 1
let g:vimpy_remove_unused = 1

"let g:UltiSnipsEnableSnipMate=1
let g:pymode_rope = 0
let g:pymode_doc = 0
set clipboard=unnamedplus
filetype plugin indent on
set grepprg=grep\ -nH\ $*
" The rest of your config follows here
let g:tex_flavor='latex'
"ActivateAddons vim-snippets snipmate
set t_Co=256
colorscheme badwolf
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set timeoutlen=1000
set colorcolumn=80
let mapleader = " "
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:pymode_doc_bind = 'K'
map <F2> :NERDTreeToggle<CR>
let g:formatprg_c = "astyle"
noremap <F3> :Autoformat<CR><CR>

let g:pep8_ignore="E731"
let g:syntastic_python_pep8_args="--ignore=E731"
let g:syntastic_python_flake8="--ignore=E731"
let g:pymde_lint_ignore="E731"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:jedi#goto_definitions_command = "D"

"""""""""""""""Syntastic configuration""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set lazyredraw
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding"
set foldlevelstart=10   " open most folds by default"
set foldnestmax=10      " 10 nested fold max"
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level"
" move to beginning/end of line
nnoremap B ^
nnoremap E $
"highlight last inserted text
nnoremap gV `[v`]
" toggle gundo
 nnoremap <leader>u :GundoToggle<CR>

"
" " $/^ doesn't do anything
noremap $ <nop>
nnoremap ^ <nop>
nnoremap <F5> :GundoToggle<CR>
let g:jedi#rename_command = "<leader>r"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#usages_command = "<c-f>"
let g:jedi#documentation_command = "K"
let g:jedi#goto_assignments_command = "<leader>d"


nmap <Leader>= :VimpyCheckLine<cr>
map <c-k> :bn<CR>
map <c-j> :bp<CR>
map <Tab> <C-W>w
map S :w<CR>
nmap q :bp <BAR> bd #<CR>
nmap bo :enew<cr>
nmap bl :ls<cr>
nmap <Leader>/ <Leader>cA 

nmap <CR> o<esc>

vmap <Leader>/ v<Leader>ci 
imap ,. ->

