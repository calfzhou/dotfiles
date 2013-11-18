Vim Configurations
==================

Usage
-----

### Mac and Linux ###

Create a symbol link to this folder, and another symbol link to `vimrc` file.

```shell
cd ~
ln -s $DOTFILES_PATH/vim .vim
ln -s .vim/vimrc .vimrc
```

### Windows ###

Symbol links are not supported on Windows, but hard links are. Use `ln.exe` to create hard links.

```batch
cd %VIM_PROGRAM_PATH%
ln %DOTFILES_PATH%/vim vimfiles
ln vimfiles/vimrc _vimrc
```

Infomation
----------

I use [vim-pathogen](https://github.com/tpope/vim-pathogen) to manage vim extensions. See [Pathogenize your VIM](http://blog.sensible.io/2012/10/18/pathogenize-your-vim.html) for more information.
