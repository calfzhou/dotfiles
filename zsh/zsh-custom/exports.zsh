# Make vim the default editor
export EDITOR="vim";

# Prefer US English and use UTF-8
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="${yellow}";

# Python virtualenv and virtualenvwrapper related.
export VIRTUAL_ENV_DISABLE_PROMPT=1
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/projects"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X";

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# Do not check for broken linkage of dependents or outdated dependents
# after installing, upgrading or reinstalling formulae.
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

export GPG_TTY=$(tty)
