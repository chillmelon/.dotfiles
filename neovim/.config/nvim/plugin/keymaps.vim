" navigete window splits using leader[hjkl]
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" resize window splits using alt+[hjkl]
nnoremap <C-w><C-h> :vertical resize -3<CR>
nnoremap <C-w><C-l> :vertical resize +3<CR>
nnoremap <C-w><C-k> :resize +3<CR>
nnoremap <C-w><C-j> :resize -3<CR>
" move to the prev or next buffer using ctrl+[hl]
nmap <C-H> :bprevious<CR>
nmap <C-L> :bnext<CR>
" move lines up and down using ctrl+[jk]
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
" random useful ones
nnoremap ; :
cmap tb term tmux kill-session
" fugitive
nnoremap <leader>gs :G<CR>
nnoremap <leader>gh :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
