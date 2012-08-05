" NOTE: we could check for other dist files next to this
" (like dist.ini or Makefile.PL) to perhaps make a better guess

autocmd BufRead,BufNewFile Changes set filetype=cpanchanges
