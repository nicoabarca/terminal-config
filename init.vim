:syntax on
:set ma
:set mouse=a
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab
:set autoread
:set nobackup
:set nowritebackup
:set noswapfile
:set nu 
:set foldlevelstart=99
:set scrolloff=7
"use y and p with the system clipboard
:set clipboard=unnamedplus

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar'
Plug 'nvim-telescope/telescope.nvim'

set encoding=UTF-8

call plug#end()

nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nmap <C-p> :TagbarToggle<CR>

:colorscheme materialbox
