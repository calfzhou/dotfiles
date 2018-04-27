Sublime Text Configurations
===========================

Usage
-----

### Mac and Linux ###

```shell
cd ~/Library/Application\ Support/Sublime\ Text/Packages/User/
ln -s $DOTFILES_HOME/sublime-text/Preferences.sublime-settings ./
```

### Windows ###

```batch
cd "C:\Users\{YourName}\AppData\Roaming\Sublime Text\Packages\User"
mklink Preferences.sublime-settings %DOTFILES_HOME%\sublime-text\Preferences.sublime-settings
```

Information
-----------

Check https://packagecontrol.io/installation for more information about Package Control.
