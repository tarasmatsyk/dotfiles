
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'

" move code
" Plug 'matze/vim-move'

" Initialize plugin system
call plug#end()

" Fuzzy search
nnoremap <C-p> :FZF<CR>

" Neomake setup

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" nvimrc configuration
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

set clipboard=unnamedplus
set mouse=a

autocmd BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us textwidth=72

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

syntax enable
set number showmatch
set shiftwidth=4 tabstop=4 softtabstop=4 textwidth=120  expandtab autoindent
let python_highlight_all = 1
