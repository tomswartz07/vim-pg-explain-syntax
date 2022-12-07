" Vim syntax file
" Language:    NVIM v0.8.1
" Filenames:   *.explain
" Maintainer:  Tom Swartz <tom.swartz@crunchydata.com>
" Last Change: 06 Dec 2022
" Version:     0.01
"

syn match Node "->\s\+[A-Za-z]\+"
syn match SortKey "Sort Key:"
syn match SortMethod "Sort Method:"
syn match LogNumber '0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'
syn match Workers 'Worker.\+: '
syn match Cond '[A-Za-z]\+ Cond:'
syn match Removed 'Rows Removed by [A-Za-z]\+ Filter:'
syn region Cost start="(cost=\d\+" end=")"
syn region ExecutionTiming start="Execution Time:" end="ms"
syn region PlanningTiming start="Planning Time:" end="ms"
syn region Query start="explain" end=";"
syn region Title start="QUERY PLAN" end="-\+"
syn region Timing start='(actual time' end=')'

highlight def link Cost                 Number
highlight def link Cond                 Tag
highlight def link ExecutionTiming      DiagnosticWarn
highlight def link Node                 Label
highlight def link PlanningTiming       DiagnosticWarn
highlight def link Removed              WarningMsg
highlight def link SortKey              Function
highlight def link SortMethod           Function
highlight def link LogNumber            Number
highlight def link Query                String
highlight def link Title                Title
highlight def link Workers              Question
highlight def link Timing               Label

let b:current_syntax = "explain"
