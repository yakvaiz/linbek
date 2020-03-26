"" PLUGIN MANAGEMENT
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

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


""" EXAMPLES

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



""" SETTINGS {{{1

" set path: search-path for editing
set path+=~/.config/nvim

" base
set autowrite
let mapleader = ","

set cursorline

set clipboard=unnamedplus

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" colorscheme
colorscheme mustang

"" NAVIGATION {{{2

" enables mouse in all modes ( also for resizing of splits)
set mouse=a


""" MAPPINGS {{{1

"" pydoc
map <leader>k <leader>pw
map <leader>K <leader>pW

"" window → navigation
map <c-h> <c-w><c-h>
map <c-j> <c-w><c-j>
map <c-k> <c-w><c-k>
map <c-l> <c-w><c-l>

"" fold → open/close

" toggle fold (open/closed)
nnoremap <Space> za

"" SNIPPETS {{{1

"delete trailing spaces
func! My_DeleteTrailingSpaces()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call My_DeleteTrailingSpaces()


"" AUTOCOMMANDS {{{1

" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

