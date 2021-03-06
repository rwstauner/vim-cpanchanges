" Vim syntax file
" Language:      Perl CPAN Changes file
" Maintainer:    Randy Stauner <randy@magnificent-tears.com>
" Homepage:      http://github.com/rwstauner/vim-cpanchanges
" Bugs/requests: http://github.com/rwstauner/vim-cpanchanges/issues
" Last Change:   2011-02-10
" Spec:          http://metacpan.org/module/CPAN::Changes::Spec

if exists("b:current_syntax")
  finish
endif

" TODO: Error highlighting for non-matching lines?

syn match   cpanchangesRelease 		/^\S.\+/ contains=cpanchangesVersion,cpanchangesDate
syn match   cpanchangesVersion 		/^v\?[0-9._]\+/ contained
syn match   cpanchangesDate 		/\d\{4}-\d\{2}-\d\{2}/ contained

" use "\@<=" to avoid matching the opening whitespace
syn match   cpanchangesGroup 		/\%(^\s\+\)\@<=\[.\+\]$/
syn match   cpanchangesItemMarker 	/\%(^\s\+\)\@<=[-*]\+/

syn match   cpanchangesNextRelease 	/{{$NEXT}}/

" Preamble is any text before the first line that looks like a version (or 'next' token)
" If there is no preamble then "start=/\%1l/" swallows the first release line.
" Is there a workaround other than repeating the endpattern and using "\@!" ?
syn region  cpanchangesPreamble start=/\%1l\(v\?[0-9._]\+\|{{$NEXT}}\)\@!/ end=/^\([v0-9._]\{2,}\|{{$NEXT}}\)/me=s-1

command -nargs=+ HiLink hi def link <args>

" The default highlighting.
HiLink cpanchangesVersion		Identifier
HiLink cpanchangesDate			Statement
HiLink cpanchangesGroup			Special
" changed from SpecialChar to Special for testing with Text::VimColor
HiLink cpanchangesItemMarker 		Special
HiLink cpanchangesNextRelease 	PreProc
HiLink cpanchangesPreamble		Comment

delcommand HiLink

let b:current_syntax = "cpanchanges"
