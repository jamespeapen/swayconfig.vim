" Vim syntax file
" Language:	i3 config file
" Maintainer: Mohamed Boughaba <mohamed dot bgb at gmail dot com>
" Version: 0.1
" Last Change: Sun 06 Mar 2016 03:35:13 PM CET

" References:
" http://i3wm.org/docs/userguide.html#configuring
" http://vimdoc.sourceforge.net/htmldoc/syntax.html
"
"
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Error
syn match error /.*/

" Todo
syn keyword todo TODO,FIXME,XXX contained

" Comment
syn match comment /^#.*$/ contains=todo


" Define the highlighting.
hi! def link comment Comment
hi! def link todo Todo
hi! def link error Error

let b:current_syntax = "i3config"
