command! -nargs=1 OJD Deol python3 oj-download.py <args>
nnoremap <Leader>d :<C-u>Deol python3 oj-download.py 
nnoremap <expr> <Leader>b ":<C-u>Deol zsh oj-test.sh build " . expand("%")
nnoremap <expr> <Leader>t ":<C-u>Deol zsh oj-test.sh test " . expand("%")
nnoremap <expr> <Leader>s ":<C-u>Deol zsh oj-test.sh submit " . expand("%")
nnoremap <expr> <Leader>f ":<C-u>Deol zsh oj-test.sh force-submit " . expand("%")
nnoremap <Leader>n :<C-u>next<CR>
nnoremap <Leader>p :<C-u>prev<CR>
