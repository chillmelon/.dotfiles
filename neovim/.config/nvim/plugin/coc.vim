let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-json',
  \ ]
" add new line when press enter
inoremap <silent><expr> <cr>
			\ pumvisible() ? coc#_select_confirm() :
			\ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
