# name

# desc

# install

## install `zsh`

`$ sudo apt install zsh`

# config

- Make it your default shell:

`chsh -s $(which zsh)`


# usage

# extend

[awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins)

## install ohmyzsh

[ohmyzsh – zsh plugins](https://github.com/ohmyzsh/ohmyzsh)

`$ sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### ohmyzsh-plugins

For available plugins look:
[plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins) directory
or
[wiki](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

#### enabling plugins

You'll need to enable them in the `.zshrc` file.

For example, this might look like this:

#### using plugins

Most plugins contain a `README` file.

```
plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)
```

## zsh-completion

[zsh-completions – extra completions for zsh](https://github.com/zsh-users/zsh-completions)

### install

#### Using `antigen` zsh-plugin-manager:

`antigen bundle zsh-users/zsh-completions`

#### Manually:

`$ git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions`

Enable it in `.zshrc` by adding it to your plugin list and reloading the completion:

```
plugins=(… zsh-completions)
autoload -U compinit && compinit
```

### Usage:


## zsh-syntax-highlighting

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### install

#### Using `antigen` zsh-plugin-manager:

`antigen bundle zsh-users/zsh-syntax-highlighting`

## install zsh-autosuggestions

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### Using `antigen` zsh-plugin-manager:

`antigen bundle zsh-users/zsh-autosuggestions`

### Manually:

`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):

`plugins=(zsh-autosuggestions)`


## install antigen plugin-manager

[antigen – zsh-plugin-manager](https://github.com/zsh-users/antigen)

`$ curl -L git.io/antigen > antigen.zsh`

### usage

The usage should be very familiar to you if you use Vundle. A typical .zshrc might look like this:

```
    source /path-to-antigen/antigen.zsh

    # Load the oh-my-zsh's library.
    antigen use oh-my-zsh

    # Bundles from the default repo (robbyrussell's oh-my-zsh).
    antigen bundle git
    antigen bundle heroku
    antigen bundle pip
    antigen bundle lein
    antigen bundle command-not-found

    # Syntax highlighting bundle.
    antigen bundle zsh-users/zsh-syntax-highlighting

    # Load the theme.
    antigen theme robbyrussell

    # Tell Antigen that you're done.
    antigen apply
```

## install powerline-fonts

[powerline fonts – special fonts used by some shell-tools](https://github.com/powerline/fonts)

`$ sudo apt-get install fonts-powerline`


# tuts

[zsh refcard](http://www.bash2zsh.com/zsh_refcard/refcard.pdf)

# links


