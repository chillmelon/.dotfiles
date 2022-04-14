" plugin
call plug#begin()
" Colorscheme
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'EdenEast/nightfox.nvim'
" Essentials
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lambdalisue/suda.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'vimwiki/vimwiki'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
" Visual
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Language
Plug 'sheerun/vim-polyglot'
"Plug 'pangloss/vim-javascript'
" Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
call plug#end()

colorscheme onedark
lua require("init")
set termguicolors
let g:sql_type_default = 'pgsql'
