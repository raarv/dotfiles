" Install vim-plug and plugins if vim-plug is not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('/home/raarv/.vim/plugins')
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'sheerun/vim-polyglot'
Plug 'vim-latex/vim-latex'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'dracula/vim'
call plug#end()

:set encoding=utf-8
:set relativenumber
:set incsearch
:syntax on
:set laststatus=2
:set ruler
:set number
:set noerrorbells
:set foldmethod=indent
:set nofoldenable
:set foldlevelstart=300 
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'



"Enable folding with the spacebar
nnoremap <space> za

"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

color dracula

if has('gui_running')
   set guifont=Consolas:h12:cANSI:qDRAFT
endif

set colorcolumn=80
highlight ColorColumn ctermbg=233

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


set nobackup
set nowritebackup
set noswapfile

"enable python 3 syntax checking on python-mode
let g:pymode_python = 'python3'
