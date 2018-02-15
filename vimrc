"""" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'Raimondi/delimitMate'
Plugin 'basilgor/vim-autotags'
Plugin 'tpope/vim-markdown'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'wikitopian/hardmode'
Plugin 'tpope/vim-fugitive'
Plugin 'Conque-Shell'
Plugin 'airblade/vim-gitgutter'
" Plugin 'vim-scripts/ConflictMotions'

Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'

Plugin 'SyntaxAttr.vim'
call vundle#end()
"""" END VUNDLE

:set diffopt+=vertical
:let g:notes_directories = ['~/notes']

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete "syntax auto complete C-x C-o

syntax on

set hlsearch
set incsearch
set hidden

set tabstop=4
set softtabstop=4

set shiftwidth=4
set expandtab
set autoindent
set cindent
set cinoptions=g-1
set cino+=(0)

set laststatus=2 "show status bar always
autocmd BufRead,BufNewFile */Sources/* set noexpandtab
autocmd BufRead,BufNewFile */ploop/* set noexpandtab
autocmd BufRead,BufNewFile */newploop/* set noexpandtab

set wildmenu "visual command autocomplete
set wildmode=longest,list,full

let g:markdown_fenced_languages = ['c', 'cpp', 'sh', 'javascript', 'js=javascript', 'python', 'ruby']

highligh Comment ctermfg=darkgray
"let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
set background=dark
"set t_Co=8

"colorscheme slate
let g:airline_powerline_fonts = 1

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1


inoremap jk <esc>
"inoremap <esc> <nop> - unfortunately, it brakes shitf+tab on auto bracket
let mapleader = ","

nnoremap j gj
nnoremap k gk
nnoremap <leader><space>  :nohlsearch<CR>

set nocscopetag
"let g:airline_theme = 'kolor'
