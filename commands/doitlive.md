# name

doitlive

# desc

[doitlive – automated presentations in the terminal](https://github.com/sloria/doitlive)

# install

`$ pip install doitlive`

# config

## <details>[<summary>Comment magic (configuration)</summary>](https://doitlive.readthedocs.io/en/stable/#id6)[](https://doitlive.readthedocs.io/en/stable/#comment-magic-configuration)
<p>
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Any line in a session file that begins with `#` is a comment.

But, if they begin with `#doitlive` they are used to configure the
session.

The following options are available (all are optional).

### #doitlive speed: <int>[](https://doitlive.readthedocs.io/en/stable/#doitlive-speed-int)

configures “typing” speed. Defaults to 1.

Example:

    #doitlive speed: 3

### #doitlive prompt: <theme_name_or_template>[](https://doitlive.readthedocs.io/en/stable/#doitlive-prompt-theme-name-or-template)

configures the prompt. Can be any of the built-in themes or a custom
prompt template.

Example:

    #doitlive prompt: stev

**Using a custom template**:

You can provide the `prompt` option with a custom template. To include
the user, hostname, current directory, current path to working
directory, current datetime, or vcs branch (git or Mercurial), use
`{user}`, `{hostname}`, `{dir}`, `{cwd}`, `{now}`, and `{vcs_branch}`,
respectively.

For git, `{vcs_branch}` just shows the branch. For Mercurial, this shows
the branch name + the bookmark, except it omits the default branch name
if there is a bookmark. This is equivalent to `{git_branch}{hg_id}`.
There are also specialised `{hg_branch}`, and `{hg_bookmark}` keywords
that only show that information, without the combined logic of
`{hg_id}`.

Example:

    #doitlive prompt: {user} is at {cwd} $

Any of the prompt variables can be formatted with ANSI styles, like so:

Example:

    #doitlive prompt: {user.cyan}@{hostname.green}:{dir.bold.magenta} $

Newlines can be included in prompts using `{nl}`.

Example:

    #doitlive prompt: {user}:{dir}{nl}$

Available styles: blue, magenta, red, white, green, black, yellow, cyan,
bold, blink, underlined, dim, paren, square, curly, inverse, git, and
hg.

### #doitlive shell: <shell>[](https://doitlive.readthedocs.io/en/stable/#doitlive-shell-shell)

configures which shell is use. Defaults to the $SHELL environment
variable.

Example:

    #doitlive shell: /bin/zsh

### #doitlive alias: <alias>=<command>[](https://doitlive.readthedocs.io/en/stable/#doitlive-alias-alias-command)

adds an alias to the session.

Example:

    #doitlive alias: du="du -ach | sort -h"

### #doitlive env: <envvar>=<value>[](https://doitlive.readthedocs.io/en/stable/#doitlive-env-envvar-value)

sets an environment variable.

Example:

    #doitlive env: EDITOR=vim

### #doitlive unalias: <alias>[](https://doitlive.readthedocs.io/en/stable/#doitlive-unalias-alias)

removes an alias.

### #doitlive unset: <envvar>[](https://doitlive.readthedocs.io/en/stable/#doitlive-unset-envvar)

unsets an environment variable.

### #doitlive commentecho: [true\|false][](https://doitlive.readthedocs.io/en/stable/#doitlive-commentecho-true-false)

Whether to echo comments or not. If enabled, non-magic comments will be
echoed back in bold yellow before each prompt. This can be useful for
providing some annotations for yourself and the audience.

</p><details>


# usage

## quickstart

1. Create a file called `session.sh`. Fill it with bash commands.

2. Run doitlive play session.sh

    `$ doitlive play session.sh`

4. Type your code.


## examples

    ```
    # Use the "sorin" prompt theme
    $ doitlive play session.sh -p sorin
    # To List available themes run `doitlive themes` or `doitlive themes --preview`

    # Increase speed
    $ doitlive play session.sh -s 3

    # Use zsh
    $ doitlive play session.sh --shell /bin/zsh
    ```

## Using the recorder

You can record session files using the built-in `recorder` command.

    `$ doitlive record`

This will start a recording session.
When you are finished recording, run the stop command.
All commands will be written to a `session.sh` file.


# tuts




