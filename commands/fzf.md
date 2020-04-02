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

## fzf-vim

[fzf-vim](https://github.com/junegunn/fzf/blob/master/README-VIM.md)

### install

Once you have fzf installed, you can enable it inside Vim simply by adding the directory to &runtimepath in your Vim configuration file. The path may differ depending on the package manager.

    " If installed using Homebrew
    set rtp+=/usr/local/opt/fzf

    " If installed using git
    set rtp+=~/.fzf

If you use vim-plug, the same can be written as:

    " If installed using Homebrew
    Plug '/usr/local/opt/fzf'

    " If installed using git
    Plug '~/.fzf'
