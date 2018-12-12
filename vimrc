set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'

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

set clipboard=unnamed
set mouse=a

autocmd BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us textwidth=72

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

syntax enable
set number showmatch
let python_highlight_all = 1

" indentation config
autocmd FileType go setlocal ts=8 tw=120 autoindent
autocmd FileType python setlocal sw=4 ts=4 sts=4 tw=80 expandtab autoindent
autocmd FileType javascript setlocal sw=2 ts=2 sts=4 tw=120 expandtab autoindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" netrw
set nocompatible
filetype plugin on
let g:netrw_preview = 1
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$'
let g:syntastic_python_pylint_post_args="--max-line-length=80"

" spell check
set spell spelllang=en_us

" fzf
set rtp+=/usr/local/opt/fzf
