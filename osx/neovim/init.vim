
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'

Plug 'ludovicchabant/vim-gutentags'

" Go
Plug 'fatih/vim-go'

" move code
" Plug 'matze/vim-move'

" Initialize plugin system
call plug#end()

" Fuzzy search nnoremap <C-p> :FZF<CR> Use deoplete.
let g:deoplete#enable_at_startup = 1

" nvimrc configuration
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

set clipboard=unnamedplus
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
