:- name
git

:- desc

:- config

Username` and `email-adres`. This is only for commits. Please use the single quotes, else double quotes may break for some characters:
```bash
git config –global user.name  'your username'
git config –global user.email 'your email'
```

Enable credential memory:
```bash
git config --global credential.helper cache
```

You may update the default password cache timeout (in seconds):

```bash
git config --global credential.helper 'cache --timeout=3600'
```

:- usage

git init
