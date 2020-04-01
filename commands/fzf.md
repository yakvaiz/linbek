# NAME
fzf


# DESC

[fzf github](https://github.com/junegunn/fzf#installation)

# INSTALL

## systemwide

```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## as vim-plugin

Paste this in `~/.config/nvim/init.vim` in the **vundle**-section for Plugiins:

`Plugin 'junegunn/fzf'`

# CONFIG

# USAGE

## at terminal

`<arrow-up>`    navigate through history-commands

`foo<arrow-up>` navigate through history-commands begiining with **foo**

`<c-r>`       put selected history-command to commandline

`<c-t>`       put selected file to commandline


### Files and Directories

NOTE: You can select multiple items with TAB key

`nvim **<tab>`     Files under current directory

`nvim my**<tab>`   Files under current directory that match 'my'

`cd **<tab>`       Directories under current directory (single-selection)

### hostnames
```
ssh **<tab>
telnet **<tab>
```


### environment variables
```
unset **<tab>
export **<tab>
unalias **<tab>
```


### preview window

`{}` is replaced to the single-quoted string of the focused line

`fzf --preview 'cat {}'`


# EXTEND

[Related Projects](https://github.com/junegunn/fzf/wiki/Related-projects)

