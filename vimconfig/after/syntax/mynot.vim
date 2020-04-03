set conceallevel=2


syn region high1r matchgroup=high1mg      start='·' end='·' keepend
syn match       high1Sym    contained "·"  conceal
syn match       high1       "\\\@<!·[^·]\+·" contains=high1Sym
high def link   high1       Identifier
high     link   high1mg     Ignore

