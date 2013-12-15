" Vim syntax file
" Language: Zorq
" Maintainer: Gennadiy Filatov
" Latest Revision: 14 December 2013

if exists("b:current_syntax")
  finish
endif

syn keyword dorqKeyword array hash true false let defun

syn region  dorqString		start=+"+ skip=+\\\\\|\\"+ end=+"+

syn match dorqNumber	"\d\+"
syn match dorqNumber	"-\d\+"
syn match dorqVar	"$[a-z_][a-z0-9_]*"

let b:current_syntax = "dorq"

hi def link dorqKeyword    Statement
hi def link dorqString    String
hi def link dorqNumber Number
hi def link dorqVar Identifier

