" Vim syntax file
" Language: Vim Debugger debuggerWatch
" Maintainer: Jon Cairns
" Latest Revision: 2 August 2012

if exists("b:current_syntax")
  finish
endif

syn match debuggerWatchMarker '^\s\+[^|\/]'
syn match debuggerWatchJoiner '^\s\+[|\/^]' 
syn match debuggerWatchNumber '\d\+\.\=\d*' 
syn match debuggerWatchVarName '\s\zs.\+\ze\s=' contains=debuggerWatchStringKey
syn match debuggerWatchStringKey '\'[^']\+\'' contained 
syn match debuggerWatchTypeContainer '=\s\zs(.*)\ze\s' contains=debuggerWatchType,debuggerWatchSize
syn match debuggerWatchVarValue ')\zs.*$\ze'
syn match debuggerWatchType '(\zs[^ )]\+)\ze' contained
syn match debuggerWatchSize '\[\zs\d\+\ze\]' contained
syn region debuggerWatchString start=+\s`+ skip=+\\`+ end=+`\s*$+


hi def link debuggerWatchMarker Special
hi def link debuggerWatchTypeContainer Type
hi def link debuggerWatchType Type
hi def link debuggerWatchString String
hi def link debuggerWatchStringKey String
hi def link debuggerWatchVarName Identifier
hi def link debuggerWatchJoiner Structure
hi def link debuggerWatchNumber Number
hi def link debuggerWatchSize Number
