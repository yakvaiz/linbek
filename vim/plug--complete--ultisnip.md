# name

    ultisnips

# desc

[Ultisnips – Snippet manager for vim](https://github.com/SirVer/ultisnips)

# install

## With Vundle:

Put this into your `.vimrc`:

```vim
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
```

And run this command in vim:

`:PlugInstall`

# config

## path & co

<details><summary>Custom directory for mysnippets (`:UltisnipsEdit`)</summary>
<p>

Directory for custom snippets, which can be edited using the command `:UltisnipsEdit`:

`let g:UltiSnipsSnippetDirectories=["mysnippets"]`

NOTE: path to mysnippets has to be in runtimepath like:

`set rtp+=~/my/vim`
</p>
</details>

# usage

# extend

# tuts

## screencasts

SIRVER:

[Episode 1: What are snippets and do I need them?](http://www.sirver.net/blog/2011/12/30/first-episode-of-ultisnips-screencast/)
[Episode 2: Creating Basic Snippets](http://www.sirver.net/blog/2012/01/08/second-episode-of-ultisnips-screencast/)
[Episode 3: What's new in version 2.0](http://www.sirver.net/blog/2012/02/05/third-episode-of-ultisnips-screencast/)
[Episode 4: Python Interpolation](http://www.sirver.net/blog/2012/03/31/fourth-episode-of-ultisnips-screencast/)

VIMCASTS:

[Meet UltiSnips](http://vimcasts.org/episodes/meet-ultisnips/)
[Using Python interpolation in UltiSnips snippets](http://vimcasts.org/episodes/ultisnips-python-interpolation/)
[Using selected text in UltiSnips snippets](http://vimcasts.org/episodes/ultisnips-visual-placeholder/)
