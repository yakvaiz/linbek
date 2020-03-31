# NAME
git


# DESC
Manage git-repos from commandline


# INSTALL

`$ sudo apt install git`


# CONFIG

`Username` and `email-adres`. This is only for commits. Please use the single quotes, else double quotes may break for some characters:

```sh
$ git config –global user.name  'your username'
$ git config –global user.email 'your email'
```

Enable password-cache (remember entered password for N-seconds):

`$ git config --global credential.helper cache`

Password-cache timeout (in seconds):

`$ git config --global credential.helper 'cache --timeout=3600'`



# USAGE

## Basic workflow

Create a new repo or clone a repo:

`$ git init [reponame]`

`$ git clone [reponame]`


Add changed/new file(s)/dir(s) to the staging area. This files will be committed:

`$ git add [filename or dirname]`

or

`$ git add *`


Commit added files to the version history:

`$ git commit -m "commit description"`

Or, all files added or changed since then:

`$ git commit -a`


Send committed files to the repo:

`$ git push origin master`

