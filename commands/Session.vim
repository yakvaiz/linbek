let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/my/people/berki/github-repo/linbek/commands
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +71 fzf.md
badd +4 0.md
badd +0 zsh.md
badd +0 ~/my/people/berki/github-repo/linbek/vim/plug--complete--ultisnip.md
badd +0 pandoc.md
badd +0 ~/my/people/berki/github-repo/linbek/vim/nerdtree.md
badd +15 ~/my/people/berki/github-repo/linbek/markdown-syntax.md
badd +0 ../vim/plug--edit--surround.md
argglobal
silent! argdel *
$argadd fzf.md
set stal=2
edit fzf.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=MynotFold_Markdown()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
70
normal! zo
74
normal! zo
78
normal! zo
let s:l = 90 - ((89 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
90
normal! 0
tabedit zsh.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=MynotFold_Markdown()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
20
normal! zo
83
normal! zo
87
normal! zo
87
normal! zc
83
normal! zc
110
normal! zo
110
normal! zc
20
normal! zc
let s:l = 22 - ((21 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
tabedit ~/my/people/berki/github-repo/linbek/vim/plug--complete--ultisnip.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=MynotFold_Markdown()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
56
normal! zo
56
normal! zc
let s:l = 71 - ((70 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 01|
tabedit ~/my/people/berki/github-repo/linbek/vim/nerdtree.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=MynotFold_Markdown()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
11
normal! zo
let s:l = 33 - ((32 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 0
tabedit ../vim/plug--edit--surround.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=MynotFold_Markdown()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
let s:l = 11 - ((10 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 04|
tabedit pandoc.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=MynotFold_Markdown()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
25
normal! zo
25
normal! zc
let s:l = 1 - ((0 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 5
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
