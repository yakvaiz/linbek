"- settings
" runtime ftplugin/markdown.vim
syntax on
set fdm=expr
set fde=MyFold_Vim()
set fdt=MyFoldText_Vim()

"-- Fold function
function! MyFold_Vim()
    let line = getline(v:lnum)

    " "- or "-- or "---
    let depth = match(line, '\(^"-\+\)\@<= \(.*$\)\@=')-1
    if depth > 0
        " echom depth
        return ">" . depth
    endif

    return "="
endfunction



"- Foldtext function
function! MyFoldText_Vim()
    let nl = v:foldend - v:foldstart + 1
        let s:thisfoldline = getline(v:foldstart)
        " let linetextSplit  = substitute(substitute(s:thisfoldline,'^\s*[0-9]>\s*\(.*\)$','\1¦·',1),'\*','','g')
        let linetextSplit  = substitute(substitute(s:thisfoldline,'^\("\+-\s*.*\)$','\1¦·',1),'\*','','g')
        let linetext = printf("%-48s %-20s           ", split(linetextSplit,'¦',1)[0], split(linetextSplit,'¦',1)[1])
    endif
    let txt = linetext . nl
    return txt
endfunction

