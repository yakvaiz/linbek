# name

# desc

# install

    `Plugin 'preservim/nerdtree'`

# conf

## mappings

" toggle Nerdtree

    map <C-n> :NERDTreeToggle<CR>

### open nerdtree when opening a directory

" open Nerdtree automatically if vim opens a directory

    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Note: Executing `vim ~/some-directory` will open NERDTree and a new edit window. `exe 'cd '.argv()[0]` sets the `pwd` of the new edit window to `~/some-directory`









# usage

# extend

# tuts


