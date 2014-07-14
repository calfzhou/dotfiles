Python Virtual Environments
===========================

Usage
-----

### To backup local virtualenv ###

```shell
workon <your-env>
pip freeze > $DOTFILES_HOME/python-virtual-envs/<your-env>/requirements.txt
```

### To restore a virtualenv ###

```shell
workon <your-env>
pip install -r $DOTFILES_HOME/python-virtual-envs/<your-env>/requirements.txt
```

Information
-----------

Python packages `pip`, `virtualenv`, `virtualenvwrapper` should all be installed.
