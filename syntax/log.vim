" Vim syntax file
" Language: CiLog
" Maintainer: mwpark
" Latest Revision: 5 June 2014

if exists("b:current_syntax")
  finish
endif

syn match name "^[^,]*" nextgroup=id
syn match id ",[^,]*" contained nextgroup=date
syn match date ",[^,]*" contained nextgroup=time
syn match time ",[^,]*" contained nextgroup=level
syn match level ",[^,]*" contained nextgroup=section
syn match section ",[^,]*" contained nextgroup=code
syn match code ",[^,]*" contained nextgroup=description
syn match description ",.*" contained

syn keyword error Error containedin=level
syn keyword fail Fail containedin=level
syn keyword debug Debug containedin=level
syn keyword warning Warning containedin=level

syn match numbers "([0-9]*)" containedin=description
syn match values "\[[^]]*\]" containedin=section,description

let b:current_syntax = "cel"

hi def link name String
hi def link id Constant
" hi def link date Number
" hi def link time Float
hi def link level define
" hi def link section Function
" hi def link code Statement
hi def link description String

hi def link error Error
hi def link fail Error
hi def link debug Debug
hi def link warning Special
hi def link numbers Number
hi def link values Number
