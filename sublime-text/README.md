Sublime Text Configurations
===========================

Usage
-----

### Mac and Linux ###

``` bash
cd ~/Library/Application\ Support/Sublime\ Text/Packages/User/
ln -s $DOTFILES_HOME/sublime-text/Preferences.sublime-settings .
ln -s $DOTFILES_HOME/sublime-text/Package\ Control.sublime-settings .
```

### Windows ###

``` batch
cd "C:\Users\{YourName}\AppData\Roaming\Sublime Text\Packages\User"
mklink Preferences.sublime-settings %DOTFILES_HOME%\sublime-text\Preferences.sublime-settings
mklink "Preferences.sublime-settings %DOTFILES_HOME%\sublime-text\Package Control.sublime-settings"
```

Information
-----------

Check https://packagecontrol.io/installation for more information about Package Control.

Check https://packagecontrol.io/docs/syncing for package control syncing.
