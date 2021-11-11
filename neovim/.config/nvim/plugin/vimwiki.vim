let g:vimwiki_list = [{
	\'path': '$HOME/Wiki',
	\'syntax': 'markdown',
	\'ext': '.md'
\}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab
command! Diary VimwikiDiaryIndex
augroup vimwikigroup
  autocmd!
  " automatically update links on read diary
  autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

function! VimwikiLinkHandler(link)
    if a:link =~ '\.\(pdf\|jpg\|jpeg\|png\|gif\)$'
        call vimwiki#base#open_link(':e ', 'file:'.a:link)
        return 1
    endif
    return 0
endfunction
