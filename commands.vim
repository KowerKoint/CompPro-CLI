function! OJD(url) abort
  execute "Deol -split=float zsh oj-download.sh " . a:url
  if fnamemodify(a:url, ":h:t") == "contests"
    let @a = "Contests/AtCoder_" . fnamemodify(a:url, ":t") . "/*/main.cpp"
  else
    let @a = "Contests/AtCoder_" . fnamemodify(a:url, ":h:h:t") . "/" . fnamemodify(a:url, ":t") . "/main.cpp"
  endif
endfunction
command! -nargs=1 OJD call OJD(<f-args>)

nnoremap <expr> <Leader>o ":<C-u>argadd " . @a
nnoremap <Leader>d :<C-u>OJD 
nnoremap <expr> <Leader>b ":<C-u>Deol -split=float zsh oj-test.sh build " . expand("%")
nnoremap <expr> <Leader>t ":<C-u>Deol -split=float zsh oj-test.sh test " . expand("%")
nnoremap <expr> <Leader>s ":<C-u>Deol -split=float zsh oj-test.sh submit " . expand("%")
nnoremap <expr> <Leader>f ":<C-u>Deol -split=float zsh oj-test.sh force-submit " . expand("%")
nnoremap <expr> <Leader>r ":<C-u>Deol -split=float " . expand("%:r")
nnoremap <expr> <Leader>e ":<C-u>e " . expand("%:r") . "_expanded.cpp"
nnoremap <Leader>n :<C-u>next<CR>
nnoremap <Leader>p :<C-u>prev<CR>
