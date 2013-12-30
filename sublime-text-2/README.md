Sublime Text 2 Configurations
=============================

Usage
-----

### Mac and Linux ###

```shell
cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
ln -s $DOTFILES_HOME/sublime-text-2/Preferences.sublime-settings ./
```

### Windows ###

```batch
cd "C:\Users\{YourName}\AppData\Roaming\Sublime Text 2\Packages\User"
mklink Preferences.sublime-settings %DOTFILES_HOME%\sublime-text-2\Preferences.sublime-settings
```

Information
-----------

Check https://sublime.wbond.net/installation#st2 for more information about Package Control.
