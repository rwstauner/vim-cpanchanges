" Vim filetype plugin file
" Language:      Perl CPAN Changes file
" Maintainer:    Randy Stauner <randy@magnificent-tears.com>
" Homepage:      http://github.com/rwstauner/vim-cpanchanges
" Bugs/requests: http://github.com/rwstauner/vim-cpanchanges/issues
" Last Change:   2011-02-10
" Spec:          http://metacpan.org/module/CPAN::Changes::Spec
"
" add a line like this to filetype.vim:
"   autocmd  BufNewFile,BufRead Changes  setf cpanchanges

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" attempt to replace tabs with two spaces as naturally as possible
setlocal autoindent
setlocal expandtab
setlocal shiftwidth=2
setlocal smarttab
setlocal softtabstop=2
setlocal tabstop=2
setlocal textwidth=80
