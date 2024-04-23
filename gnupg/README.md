# GnuPG Configurations

## Usage

``` bash
cd ~
mkdir -p .gnupg
ln -s $DOTFILES_HOME/gnupg/gpg.conf .gnupg/gng.conf
ln -s $DOTFILES_HOME/gnupg/gpg-agent.conf .gnupg/gpg-agent.conf
```

To reload `gpg-agent.conf`, run

``` bash
gpgconf kill gpg-agent && gpgconf --launch gpg-agent
```
