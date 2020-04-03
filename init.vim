"- VUNDLE – PLUGIN MANAGEMENT
"-- vundle settings
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

"-- MIXED
" fzf fuzzy
Plugin 'junegunn/fzf'
set rtp+=~/.fzf

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Python documentation
Plugin 'fs111/pydoc.vim'

" autocompletion library
Plugin 'davidhalter/jedi-vim'

" colorscheme
Plugin 'haensl/mustang-vim'

" format text
Plugin 'godlygeek/tabular'

"-- SNIPPET-MANAGEMENT
" ----------------------
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" mysnippet-dir for `UltisnipsEdit`. NOTE: path to mysnippets has to be in runtimepath
let g:UltiSnipsSnippetDirectories=["mysnippets"]


"-- EXAMPLES
" ----------------------
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

"" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

"" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.

"" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"" Install L9 and avoid a Naming conflict if you've already installed a different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"



"- SETTINGS

" set runtimepath
set runtimepath+=~/my/vim/

" set path: search-path for editing
set path+=~/.config/nvim

" base
set autowrite
let mapleader = ","

set cursorline
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set clipboard=unnamedplus

" persistent undo: undo even when you close a buffer/VIM
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry


" colorscheme
colorscheme mustang

"-- NAVIGATION

" enables mouse in all modes ( also for resizing of splits)
set mouse=a


"- MAPPINGS

"-- files & buffers

" " switch to `:b` when you enter `:ls`
" cnoremap ls ls<cr>:b<space>

" fast editing and reloading of vimrc
map <leader>en :e! ~/.config/nvim/init.vim<cr>
autocmd! bufwritepost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/


" Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>


"-- select, mark

" reselect pasted block
nnoremap gV `[v`]

"-- commandline

" editing mappings on the command line
cno – e ~/my
cno … e ~/Desktop/
cno · e ./
cno × e <C-\>eCurrentFileDir("e")<cr>
cno ÷ e ./


"-- pydoc
map <leader>k <leader>pw
map <leader>K <leader>pW


"-- window → navigation
map <c-h> <c-w><c-h>
map <c-j> <c-w><c-j>
map <c-k> <c-w><c-k>
map <c-l> <c-w><c-l>


"-- fold → open/close

" toggle fold (open/closed)
nnoremap <Space> za

"-- highlight, syntax

" clear highlight
map <silent> <leader><space> :noh<cr>

"- FUNCTIONS

"-- cmdline DeleteTillSlash
"
func! DeleteTillSlash()
    let g:cmd = getcmdline()

    let g:cmd_edited = substitute(g:cmd, '\(.*/\).*', '\1', '')

    if g:cmd == g:cmd_edited
        let g:cmd_edited = substitute(g:cmd, '\(.*/\).*/', '\1', '')
    endif

    return g:cmd_edited
endfunc

"-- cmdline CurrentFileDir
"
func! CurrentFileDir(cmd)
    return a:cmd . " " . expand("%:p:h") . "/"
endfunc

"-- delete trailing spaces
func! My_DeleteTrailingSpaces()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call My_DeleteTrailingSpaces()

"-- wrap line with '`'s as inline-code
fun! MyInlineCodeWrap()
  let sym='`'
  let @+=sym . getline('.') . sym . "\n"
  normal dd"+P
endfun
nnoremap <leader>` :call MyInlineCodeWrap()<CR>

"-- wrap line with markdown-url-syntax as link
fun! My_WrapMarkdownUrl()
  let sympre='[]('
  let sympast=')'
  let @+=sympre . getline('.') . sympast . "\n"
  normal dd"+P
endfun
nnoremap <leader>l :call My_WrapMarkdownUrl()<CR>


"-- My_PasteMarkdown()

" substitute content of clipboard before pasting in
fun! My_PasteMarkdown() range

    " clipboard contains just a raw-url
    if @+ =~ '^http[^ ]\+$'
        let pageinfo=""

        if @+ =~ '^http[^ ]\+github'
            let presym=' '
            "   <title>GitHub - cytopia/ffscreencast: ffscreencast - ffmpeg screencast/desktop-recording with video overlay and multi monitor support</title>
            let pagetitle=split(system('lynx -source "'.@+.'" | sed -n -e "s/^.*<title>GitHub - \([^ ]\+\)[:-]\+ \(.*\)<\/title>.*$/\1¦\2/p"'), '¦')
            let linktext=pagetitle[0]
            let pageinfo='\n '.pagetitle[1]

        elseif @+ =~ '^http[^ ]\+youtube\|vimeo'
            let presym=' '
            let pagetitle=system('printf "%s" "$(lynx -source "'.@+.'" | sed -n -e "s/^.*<title>\s*\(.*\)\s*<\/title>.*$/\1/p" | sed "s/ [·|–-] .*$//" | recode html..UTF-8 )"')
            let linktext=pagetitle

        elseif @+ =~ '^http[^ ]\+\(stackoverflow\|stackexchange\|serverfault\|superuser\|askubuntu\)'
            let presym=' '
            "   <title>mouse - Any macro recorder programs availiable? - Ask Ubuntu</title>
            let pagetitle=system('lynx -source "'.@+.'" | sed -n -e "s/^.*<title>\(.*\) - \(Stack Overflow\|Stack Exchange\|Serverfault\|Superuser\|Askubuntu\)<\/title>.*$/\1/p"')
            let linktext=pagetitle
            let pageinfo=""

        else
            let presym=""
            let pagetitle=system('printf "%s" "$(lynx -source "'.@+.'" | sed -n -e "s/^.*<title>\s*\(.*\)\s*<\/title>.*$/\1/p" | sed "s/ [·|–-] .*$//" | recode html..UTF-8 )"')
            let linktext=pagetitle

        endif

        let @a=substitute(@+, 'http.*', presym.'['.linktext.'](&)'.pageinfo, "")
        put a


    " clipboard contains html
    else

        " parse: html  markdown using pandoc
        let @a=system('xclip -o -t text/html | pandoc -f html -t gfm')

        " TODO:
        "   don´t substitute inbetween code-block (``` ... ```)

        " TODO:
        "   - extract anchors:
        "       - <span id="ANCHOR"...>text</span>
        "       - 

        " subst:    <a href="link"...>text</a>       [text](link)
        let @a=substitute(@a, '<a href="\([^"]\+\)"[^>]*>\(.\{-}\)<\/a>', '[\2](\1)', 'g')

        " subst:    <code>text</code>                 `text`
        let @a=substitute(@a, '<[\/]*code[^>]*>', '`', 'g')

        " subst:    <strong>text</strong>             __text__
        let @a=substitute(@a, '<[\/]*strong[^>]*>', '__', 'g')

        " delete:   <span>text</span>
        let @a=substitute(@a, '<[\/]*span[^>]*>', '', 'g')

        " delete:   <img...>
        let @a=substitute(@a, '<img[^>]*>', '', 'g')

        " delete:   <em...>text</em>
        let @a=substitute(@a, '<[\/]*em[^>]*>', '', 'g')

        " delete:   [Edit](wikilink.to.edit.page...)
        let @a=substitute(@a, '\[Edit\](.*wiki[^\n]*)\n', '\n', 'g')

        " delete:   all other tags ( deletes maps like <Cr> too)
        " let @a=substitute(@a, '<[a-z]\+\(>\| [^>]*>\)', '', 'g')


        put a

    endif

endfun

nnoremap <leader>m :call My_PasteMarkdown()<cr>
nnoremap <c-p>     :call My_PasteMarkdown()<cr>


"-- My_ToggleFullscreenSplit()

" toggle fullscreen for active split
fun! My_ToggleFullscreenSplit()
    " nnoremap ,. <c-w>\|<c-w>_
    if exists('s:mysplitfullscreen') && s:mysplitfullscreen==1
        let s:mysplitfullscreen=0
        wincmd =
        echom "-------- 1"
    else
        let s:mysplitfullscreen=1
        wincmd | | wincmd _
        echom "-------- 2"
    endif
endfun
nnoremap <leader>f :call My_ToggleFullscreenSplit()<cr>
nnoremap <c-w><c-w> :call My_ToggleFullscreenSplit()<cr>



"- AUTOCOMMANDS

" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

