syntax enable
set background=dark
colorscheme solarized

set tabstop=4     " number of visual spaces per TAB
set shiftwidth=4  " Indents will have a width of 4
set softtabstop=4 " number of spaces in tab when editing
set expandtab

set number
set showcmd
set cursorline
set wildmenu      " visual autocomplete for command menu
set showmatch     " highlight matching [{()}]

set incsearch
set hlsearch

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces() " auto trailing whitespace

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" set view window's center at current cursor
nnoremap j jzz
nnoremap k kzz

" jk is escape
inoremap jk <esc>

set nocompatible              " be iMproved, required
filetype off                  " required

set laststatus=2              " vim airline

set updatetime=250            " vim gitgutter

let g:ctrlp_map = '<c-p>'     "ctrl p
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

map <C-b> :NERDTreeToggle<CR> " nerd tree

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
