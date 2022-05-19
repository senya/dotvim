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
"Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'vimwiki/vimwiki'
" Plugin 'vim-scripts/ConflictMotions'

Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
"Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'altercation/vim-colors-solarized'

Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'

Plugin 'SyntaxAttr.vim'

Bundle 'sickill/vim-pasta'

"Plugin 'kana/vim-textobj-user'
"Plugin 'kana/vim-textobj-function'
Plugin 'alfredodeza/chapa.vim'

Plugin 'Chiel92/vim-autoformat'

Plugin 'will133/vim-dirdiff'

Plugin 'vim-scripts/vsutil.vim'
Plugin 'vim-scripts/VimRegEx.vim'

Plugin 'vim-scripts/functionlist.vim'

"Plugin 'python-mode/python-mode'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'dense-analysis/ale'

Plugin 'vim-python/python-syntax'

Plugin 'wellle/context.vim'

Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-mark'

call vundle#end()
"""" END VUNDLE

" for plugin 'vim-python/python-syntax'
let g:python_highlight_all = 1

" for plugin 'python-mode/python-mode', to not interfere with
" plugin 'vim-python/python-syntax'
let g:pymode_syntax_all = 0
let g:pymode_syntax = 0
let g:pymode_options = 0
" to not interfere with plugin 'dense-analysis/ale'
let g:pymode_lint_on_write = 0

" for plugin 'dense-analysis/ale
"let g:ale_linters = {'python': ['pycodestyle']} 
let g:ale_linters = {'c': ['mymake'], 'cpp': ['mymake']} 
let g:ale_c_cc_options="-Ibuild -I. -Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include"
let g:ale_cpp_cc_options="-Ibuild -I. -Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include"
let g:ale_c_clang_options="-Ibuild -I. -Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include"
let g:ale_cpp_clang_options="-Ibuild -I. -Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include"
let g:ale_cpp_flawfinder_options="-Ibuild -Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include"
let g:ale_c_clangcheck_options="-Ibuild -extra-arg='-Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include'"
let g:ale_cpp_clangcheck_options="-Ibuild -Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include"
let g:ale_c_gcc_options="-Ibuild -I. -Iinclude -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include"

let g:ale_python_mypy_options="--warn-unused-configs  --disallow-subclassing-any --disallow-any-generics --disallow-incomplete-defs --disallow-untyped-decorators --no-implicit-optional  --warn-redundant-casts --warn-unused-ignores --no-implicit-reexport"

" for plugin 'vim-mark' to not rewrite * and # search:
nmap <Plug>IgnoreMarkSearchNext <Plug>MarkSearchNext
nmap <Plug>IgnoreMarkSearchPrev <Plug>MarkSearchPrev

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

set spell spelllang=en_us
set colorcolumn=+1

set laststatus=2 "show status bar always
autocmd BufRead,BufNewFile */Sources/* set noexpandtab
autocmd BufRead,BufNewFile */ploop/* set noexpandtab
autocmd BufRead,BufNewFile */newploop/* set noexpandtab
autocmd BufRead,BufNewFile */vzkernel/* set noexpandtab
autocmd BufRead,BufNewFile *.h,*.c set tw=80
autocmd BufRead,BufNewFile *.py set tw=79
autocmd BufRead,BufNewFile */qemu-iotests/??? set tw=79
autocmd BufRead,BufNewFile */git-rebase-todo set nospell
autocmd BufRead,BufNewFile *.json set comments=:#
"autocmd BufRead,BufNewFile *.json syntax spell toplevel

autocmd BufRead,BufNewFile *.h,*.c set filetype=c

au BufRead,BufNewFile */COMMIT_EDITMSG set nocindent | set tw=71 | set fo+=t

au FilterWritePre * if &diff | set colorcolumn= | endif

set wildmenu "visual command autocomplete
set wildmode=longest,list,full

let g:markdown_fenced_languages = ['c', 'cpp', 'sh', 'javascript', 'js=javascript', 'python', 'ruby']

"highligh Comment ctermfg=darkgray
"let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
set background=dark
"set t_Co=8

"colorscheme slate
let g:airline_powerline_fonts = 1

set backspace=2
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1


inoremap jk <esc>
"inoremap <esc> <nop> - unfortunately, it brakes shitf+tab on auto bracket
let mapleader = ","

nnoremap j gj
nnoremap k gk
nnoremap <leader><space>  :nohlsearch<CR>
"nnoremap * :keepjumps normal! *``<CR>
"nnoremap * :keepjumps normal! mi*`i<CR>
"nnoremap * m`:keepjumps normal! *``<cr>
"nmap <silent> * "syiw<Esc>: let @/ = @s<CR>
nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>

nnoremap <cr> :noh<CR><CR>:<backspace>

inoremap <f6> <esc>:wall<enter>:make -j12<enter>
noremap <f6> <esc>:wall<enter>:make -j12<enter>

noremap <f2> <esc>:Flisttoggle<enter>

let g:context_enabled = 0
nnoremap <f12> :ContextToggle<CR>

set nocscopetag
"let g:airline_theme = 'kolor'

"auto set paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
"end auto set paste

"vnoremap <F2> :Autoformat<CR>
"nnoremap <F2> V:Autoformat<CR>


hi MatchParen cterm=bold ctermbg=none ctermfg=white

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" airline config
let g:airline#extensions#default#section_truncate_width = {
    \ 'a': 110,
    \ 'b': 110,
    \ 'x': 60,
    \ 'y': 110,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }


" Modify colors of DIFF
"set termguicolors
"hi DiffAdd      guifg=NONE          guibg=#162116
"hi DiffChange   guifg=NONE          guibg=#162116
"hi DiffDelete   guifg=#ff8080       guibg=#101010
"hi DiffText     guifg=NONE          guibg=#2c8e2e
hi DiffAdd ctermbg=232
