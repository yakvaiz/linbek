" runtime ftplugin/markdown.vim
syntax on
set fdm=expr
set fde=MynotFold()

function! MynotFold()
    let line = getline(v:lnum)

    " -: or --: or ---:
    " let depth = match(substitute(line, '^#[ ]*\(.*\)$', '\1', ''), '^[# ]*\(-\+\)\@<=:\(.*$\)\@=')
    let depth = match(line, '\(^-\+\)\@<=:\(.*$\)\@=')
    if depth > 0
        " echom depth
        return ">" . depth
    endif

    return "="
endfunction



function! MynotFoldText()
    let nl = v:foldend - v:foldstart + 1
        let s:thisfoldline = getline(v:foldstart)
        " let linetextSplit  = substitute(substitute(s:thisfoldline,'^\s*[0-9]>\s*\(.*\)$','\1¦·',1),'\*','','g')
        let linetextSplit  = substitute(substitute(s:thisfoldline,'^\(-\+:\s*.*\|# .*{{{[0-9][ ]*\)$','\1¦·',1),'\*','','g')
        let linetext = printf("%-48s %-20s           ", split(linetextSplit,'¦',1)[0], split(linetextSplit,'¦',1)[1])
    endif
    let txt = linetext . nl
    return txt
endfunction

set foldtext=MynotFoldText()
