" Modified from ejs-syntax to dettect etlua
" https://github.com/nikvdp/ejs-syntax
runtime! syntax/html.vim
unlet b:current_syntax

" Include Java syntax
syn include @etlua syntax/lua.vim

syn region etluaScriptlet matchgroup=etluaTag start=/<%/  keepend end=/%>/ contains=@etlua
syn region etluaExpr	matchgroup=etluaTag start=/<%=/ keepend end=/%>/ contains=@etlua

" Redefine htmlTag so that it can contain etluaExpr
syn clear htmlTag
syn region htmlTag start=+<[^/%]+ end=+>+ contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster,etluaExpr,lua

command -nargs=+ HiLink hi def link <args>
HiLink  etluaTag      htmlTag
delcommand HiLink

let b:current_syntax = "etlua"

