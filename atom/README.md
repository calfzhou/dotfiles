Atom Configurations
==================

Usage
-----

### Mac and Linux ###

```shell
cd ~
ln -s $DOTFILES_HOME/atom .atom
```

### Windows ###

TODO

Information
-----------

Installed packages are git-ignored to reduce the size of git repo. But a list of installed packages (with versions) is saved in `my-packages.txt`. To install all of them, use command:

``` bash
apm install --packages-file my-packages.txt
```

To update the list file, use command:

``` bash
apm list --installed --bare > my-packages.txt
```
