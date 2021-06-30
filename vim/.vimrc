language en_US.UTF-8
" Plugins
set encoding=UTF-8
"--------------
call plug#begin('~/.vim/plugged')
"--------------
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'jwalton512/vim-blade'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'chr4/nginx.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

" =======
" Indents
" =======
let g:html_indent_style1 = "inc"
let g:html_indent_script1 = "inc"
set cinoptions+=:0,=4
" ======
" Styles
" ======
"
if has('termguicolors')
	set termguicolors
endif
set background=dark
let g:nord_italic_comments = 1
let g:nord_italic = 1
colorscheme nord

" enable italic
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

" ===========
" Keybindings
" ===========
"
" leader = space
let mapleader = " "
" move around windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" move to the prev or next buffer using ctrl+[hl]
nmap <C-H> :bprevious<CR>
nmap <C-L> :bnext<CR>
" go to definition
nmap gd <Plug>(coc-definition)
" move lines up and down using ctrl+[jk]
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
" toggle tagbar
nmap <C-I> :TagbarToggle<CR>

