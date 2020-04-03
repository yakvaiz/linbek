"set fdm=marker

function! MyFold_Bash()
    let nl = v:foldend - v:foldstart + 1

    if &fdm == "marker"
        let linetext = printf("%-70s", substitute(getline(v:foldstart),'^ *\(.*\) *{{{\d.*$', '\1', 1))
    else
        let linetext = getline(v:foldstart)
    endif

    "  print here to preserve leading spaces!
    let txt = printf("%-60s", linetext) . nl
    return txt
endfunction
set foldtext=MyFold_Bash()
