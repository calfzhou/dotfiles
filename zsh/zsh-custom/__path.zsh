# Define shared path
[[ -d "$HOME/dotfiles" ]] && export DOTFILES_HOME="$HOME/dotfiles"

# Add GNU bins and mans
GUN_HOME="/usr/local/opt/coreutils/libexec"
[[ -d "$GUN_HOME/gnubin" ]] && PATH="$GUN_HOME/gnubin:$PATH"
[[ -d "$GUN_HOME/gnuman" ]] && MANPATH="$GUN_HOME/gnuman:$MANPATH"

# Phabricator's Arcanist
ARC_HOME="$HOME/tools/arcanist"
[[ -d "$ARC_HOME/bin" ]] && PATH="$ARC_HOME/bin:$PATH"
[[ -s "$ARC_HOME/resources/shell/bash-completion" ]] && source "$ARC_HOME/resources/shell/bash-completion"

# Composer
COMPOSER_HOME="$HOME/.composer"
[[ -d "$COMPOSER_HOME/vendor/bin" ]] && PATH="$COMPOSER_HOME/vendor/bin:$PATH"

# Unversioned Python
[[ -d "/usr/local/opt/python/libexec/bin" ]] && PATH="/usr/local/opt/python/libexec/bin:$PATH"

# RVM
RVM_HOME="$HOME/.rvm"
[[ -d "$RVM_HOME/bin" ]] && PATH="$RVM_HOME/bin:$PATH"
[[ -s "$RVM_HOME/scripts/rvm" ]] && source "$RVM_HOME/scripts/rvm"
[[ -s "$RVM_HOME/scripts/completion" ]] && source "$RVM_HOME/scripts/completion"

# NVM
NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -r "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Git encrypt
[[ -d "$HOME/tools/git-encrypt" ]] && PATH="$HOME/tools/git-encrypt:$PATH"

export PATH
export MANPATH
