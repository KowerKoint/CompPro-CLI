function! OJD(url) abort
  if fnamemodify(a:url, ":h:t") == "contests"
    execute "!rm -rf " . fnamemodify(a:url, ":t") . "_*/"
    let @a = fnamemodify(a:url, ":t") . "_*/main.cpp"
  else
    execute "!rm -rf " . fnamemodify(a:url, ":t") . "/"
    let @a = fnamemodify(a:url, ":t") . "/main.cpp"
  endif
  execute "Deol python3 oj-download.py " . a:url
endfunction
command! -nargs=1 OJD call OJD(<f-args>)

nnoremap <expr> <Leader>o ":<C-u>argadd " . @a
nnoremap <Leader>d :<C-u>OJD 
nnoremap <expr> <Leader>b ":<C-u>Deol zsh oj-test.sh build " . expand("%")
nnoremap <expr> <Leader>t ":<C-u>Deol zsh oj-test.sh test " . expand("%")
nnoremap <expr> <Leader>s ":<C-u>Deol zsh oj-test.sh submit " . expand("%")
nnoremap <expr> <Leader>f ":<C-u>Deol zsh oj-test.sh force-submit " . expand("%")
nnoremap <Leader>n :<C-u>next<CR>
nnoremap <Leader>p :<C-u>prev<CR>
