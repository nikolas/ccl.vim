" Vim syntax file
" Language:     Cerner Command Langauge (CCL)
" Maintainer:   <nnnik@hotmail.com>
" Last Change:  August 10, 2012
" Filenames:    *.prg *.ccl
" URL:		https://github.com/nikolas/ccl.vim

if exists("b:current_syntax")
  finish
endif

" Always ignore case 
syn case ignore

" General keywords which don't fall into other categories
syn keyword cclKeyword	 by
syn keyword cclKeyword	 call create
syn keyword cclKeyword	 database declare desc detail drop dummyt
syn keyword cclKeyword	 exists
syn keyword cclKeyword	 from
syn keyword cclKeyword	 group
syn keyword cclKeyword	 having head
syn keyword cclKeyword	 insert into
syn keyword cclKeyword	 join
syn keyword cclKeyword	 limit
syn keyword cclKeyword	 order
syn keyword cclKeyword	 plan
syn keyword cclKeyword	 record
syn keyword cclKeyword	 select set
syn keyword cclKeyword	 table truncate
syn keyword cclKeyword	 update
syn keyword cclKeyword	 where with

" Special values
syn keyword cclSpecial	 false null true

" Strings (single- and double-quote)
syn region cclString		 start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region cclString		 start=+'+  skip=+\\\\\|\\'+  end=+'+
syn region cclString		 start=+\~+  end=+\~+

" Numbers
syn match cclNumber		 "-\=\<[0-9]*\>"
syn match cclNumber		 "-\=\<[0-9]*\.[0-9]*\>"
syn match cclNumber		 "-\=\<[0-9]*\.[0-9]*e[+-]\=[0-9]*\>"

" User variables
syn match cclVariable		 "@\a*[A-Za-z0-9]*[._]*[A-Za-z0-9]*"

" Comments (c-style, ccl-style and modified sql-style)
syn match cclComment		 ";.*"
syn sync ccomment cclComment

" Column types

syn keyword cclType		 f4 f8
syn keyword cclType		 i4 i8
syn keyword cclType		 vc

" Logical, string and  numeric operators
syn keyword cclOperator	 not and or is in like

" Control flow functions
syn keyword cclFlow		 if else elseif endif
syn region cclFlow		 start="if("	   end=")"  contains=ALL

" General Functions
"
syn region cclFunction		start="alterlist(" end=")" contains=ALL
syn region cclFunction		start="cnvtdatetime(" end=")" contains=ALL
syn region cclFunction		start="replace(" end=")" contains=ALL
syn region cclFunction		start="size(" end=")" contains=ALL
syn region cclFunction		start="trim(" end=")" contains=ALL
syn region cclFunction		start="validate(" end=")" contains=ALL


hi def link cclKeyword		 Statement
hi def link cclSpecial		 Special
hi def link cclString		 String
hi def link cclNumber		 Number
hi def link cclVariable		 Identifier
hi def link cclComment		 Comment
hi def link cclType		 Type
hi def link cclOperator		 Statement
hi def link cclFlow		 Statement
hi def link cclFunction		 Function
hi def link cclCreate		 CREATE

let b:current_syntax = "ccl"
