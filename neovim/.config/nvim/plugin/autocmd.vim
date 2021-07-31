fun! TrimWhiteSpace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup chillmelon
  autocmd!
  autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

autocmd BufNewFile,BufReadPre *.java nmap <leader>rn :w <CR> :!javac %<cr>:!time java %:r<cr>
autocmd BufNewFile,BufReadPre *.cpp nmap <leader>rn :w <CR> :!g++ %; if [ -f a.out ]; then time ./a.out; rm a.out; fi <CR>
autocmd BufNewFile,BufReadPre *.c++ nmap <leader>rn :w <CR> :!g++ %; if [ -f a.out ]; then time ./a.out; rm a.out; fi <CR>
autocmd BufNewFile,BufReadPre *.c nmap <leader>rn :w <CR> :!gcc %; if [ -f a.out ]; then time ./a.out; rm a.out; fi <CR>
autocmd BufNewFile,BufReadPre *.py nmap <leader>rn :w <CR> :!time python3 % <CR>
