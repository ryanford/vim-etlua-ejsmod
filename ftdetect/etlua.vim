" Modified from ejs-syntax to detect etlua files
" Modified from vim-coffeescript to detect etlua files
" Language:    Etlua
" Maintainer:  Ryan Ford
" URL:         http://github.com/ryanford-frontend/vim-etlua
" License:     WTFPL

autocmd BufNewFile,BufRead *.etlua set filetype=etlua
autocmd BufNewFile,BufRead *._etlua set filetype=etlua

function! s:DetectEtlua()
    if getline(1) =~ '^#!.*\<etlua\>'
        set filetype=etlua
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectEtlua()
