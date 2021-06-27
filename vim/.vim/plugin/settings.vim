"-------------
" Tab control
"-------------
set autoindent
set smartindent
set cindent
set smarttab
set tabstop=2
set shiftwidth=2
"-------------
" Search
"-------------
set ignorecase
set incsearch
set smartcase

"-------------
" Filetype
"-------------
filetype plugin on

"--------------
" System
"--------------
set autoread                          " auto read when file is changed from outside
set hidden                            " switch buffers without saving
set clipboard=unnamed
set noswapfile
set nobackup
set undodir=~/.vim/undodir viminfo=
set timeoutlen=1000
set ttimeoutlen=0
set ttyfast                           " send more chars while redrawing
set lazyredraw                        " speedup vim


"-------------
" Others
"-------------
set scrolloff=5
set backspace=start,eol,indent
