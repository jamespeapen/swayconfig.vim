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
syn match Error /.*/

" Todo
syn keyword Todo TODO FIXME XXX contained

" Comment
" Comments are started with a # and can only be used at the beginning of a line
syn match Comment /^\s*#.*$/ contains=Todo

" Font
" A FreeType font description is composed by:
" a font family, a style, a weight, a variant, a stretch and a size.
syn match FontSeparator /,/ contained
syn match FontSeparator /:/ contained
syn match FontKeyword /font\s/ contained
syn match FontNamespace /font\s\?\w\+:/ contained contains=FontSeparator,FontKeyword
syn match FontContent /-\?\w\+\(-\+\|\s\+\|,\)/ contained contains=FontNamespace,FontKeyword,FontSeparator
syn match FontSize /\s\=\d\+\(px\)\?\s\?$/ contained
syn match Font /^\s*font\s\+.*$/ contains=FontContent,FontSeparator,FontSize

" variables
syn match VariableModifier /+/ contained
syn match VariableAndModifier /+\w\+/ contained contains=VariableModifier
syn match Variable /\$\w\+\(-\w\+\)\?\(\s\|+\)\?/ contains=VariableModifier,VariableAndModifier

" Keyboard bindings
syn keyword Action toggle fullscreen restart key import kill shrink grow contained
syn keyword Action focus move split layout resize restore reload mute unmute exit contained
syn match Modifier /\w\++\w\+\(\(+\w\+\)\+\)\?/ contained contains=VariableModifier
syn match Number /\d\+/ contained
syn match BindKeyword /\(bindsym\|bindcode\|exec\)\s/ contained
syn match BindArgument /--\w\+\(\(-\w\+\)\+\)\?\s/ contained
syn match Bind /^\s*\(bindsym\|bindcode\)\s\+.*$/ contains=Variable,BindKeyword,VariableAndModifier,BindArgument,Number,Modifier,Action

" Floating
syn match SizeSpecial /x/ contained
syn match NegativeSize /-/ contained
syn match Size /-\?\d\+\s\?x\s\?-\?\d\+/ contained contains=SizeSpecial,Number,NegativeSize
syn match Floating /^\s*floating_modifier\s\+\$\w\+\d\?/ contains=Variable
syn match Floating /^\s*floating_\(maximum\|minimum\)_size\s\+-\?\d\+\s\?x\s\?-\?\d\+/ contains=Size

" Orientation
syn keyword OrientationKeyword vertical horizontal auto contained
syn match Orientation /^\s*default_orientation\s\+\(vertical\|horizontal\|auto\)\s\?$/ contains=OrientationKeyword


" Define the highlighting.
hi! def link Error Error
hi! def link Todo Todo
hi! def link Comment Comment
hi! def link FontContent Type
hi! def link OrientationKeyword Type
hi! def link FontSize Constant
hi! def link Number Constant
hi! def link NegativeSize Constant
hi! def link FontSeparator Special
hi! def link VariableModifier Special
hi! def link SizeSpecial Special
hi! def link FontNamespace PreProc
hi! def link BindArgument PreProc
hi! def link Action Type
hi! def link FontKeyword Identifier
hi! def link BindKeyword Identifier
hi! def link Orientation Identifier
hi! def link Floating Identifier
hi! def link Variable Statement
hi! def link VariableAndModifier Constant
hi! def link Modifier Constant

let b:current_syntax = "i3config"
