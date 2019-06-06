
# Solarized colors, taken from http://git.io/solarized-colors.
# local bold="%{$terminfo[bold]%}"
# local reset="%{$reset_color%}"
# local black="%{%F{235}%}"
local bold="$FX[bold]"
local reset="$FX[reset]"
local black="$FG[235]"
local white="$FG[254]"
local yellow="$FG[136]"
local orange="$FG[166]"
local red="$FG[124]"
local magenta="$FG[125]"
local violet="$FG[061]"
local blue="$FG[033]"
local cyan="$FG[037]"
local green="$FG[064]"
local bgyellow="$BG[136]"

prompt_git() {
    local s='';
    local branchName='';

    # Check if the current directory is in a Git repository.
    if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then

        # check if the current directory is in .git before running git checks
        if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then

            # Ensure the index is up to date.
            git update-index --really-refresh -q &>/dev/null;

            # Check for uncommitted changes in the index.
            if ! $(git diff --quiet --ignore-submodules --cached); then
                s+='+';
            fi;

            # Check for unstaged changes.
            if ! $(git diff-files --quiet --ignore-submodules --); then
                s+='!';
            fi;

            # Check for untracked files.
            if [ -n "$(git ls-files --others --exclude-standard)" ]; then
                s+='?';
            fi;

            # Check for stashed files.
            if $(git rev-parse --verify refs/stash &>/dev/null); then
                s+='$';
            fi;

        fi;

        # Get the short symbolic ref.
        # If HEAD isn’t a symbolic ref, get the short SHA for the latest commit
        # Otherwise, just give up.
        branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
            git rev-parse --short HEAD 2> /dev/null || \
            echo '(unknown)')";

        [ -n "${s}" ] && s=" [${s}]";

        echo -e " ${reset}on git:${violet}${branchName}${blue}${s}";
    else
        return;
    fi;
}

ZSH_THEME_VIRTUALENV_PREFIX=" ${magenta}("
ZSH_THEME_VIRTUALENV_SUFFIX=")"

ZSH_THEME_NVM_PROMPT_PREFIX=" ${orange}n"

ZSH_THEME_RUBY_PROMPT_PREFIX=" ${cyan}r"

local exit_code="%(?,, ${white}C:${red}%?)"
local shell_level="%(2L, ${white}L:${red}%L,)"

# Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
    local host_style="$red";
else
    local host_style="$yellow";
fi;

# Prompt format:
#
# [TIME] USER@MACHINE in DIRECTORY on git:BRANCH [STATE] VENV NVM RVM L:SHELL_LEVEL C:LAST_EXIT_CODE
# PRIVILEGES COMMAND
#
# For example:
#
# [11:01:03] user@localhost in ~/dotfiles on git:master [!?] n8.12.0 C:1
# $
PROMPT="
"
PROMPT+="${bold}${cyan}[%D{%H:%M:%S}]" # current time
PROMPT+=" %(#,${bgyellow}${black},${orange})%n" # username
PROMPT+="${reset}@"
PROMPT+="${bold}${host_style}%m${reset}" # host
PROMPT+="${reset} in ${green}%~" # working directory
PROMPT+="\$(prompt_git 2>/dev/null)" # git branch and status
PROMPT+="\$(virtualenv_prompt_info)" # python virtual env
PROMPT+="\$(nvm_prompt_info)" # nvm node version
PROMPT+="\$(rvm_prompt_info)" # rvm ruby version
PROMPT+="${shell_level}" # shell level
PROMPT+="${exit_code}" # last exit code
PROMPT+="
"
PROMPT+="${white}%(#,#,$) ${reset}" # privileges


# # Set the terminal title to the current working directory.
# PS1="\[\033]0;\w\007\]";
# PS1+="\[${bold}\]\n"; # newline
# PS1+="\[${cyan}\][\t] "
# PS1+="\[${userStyle}\]\u"; # username
# PS1+="\[${white}\]@";
# PS1+="\[${hostStyle}\]\h"; # host
# PS1+="\$(prompt_venv \"${white} ${magenta}\" 2>/dev/null)"; # virtual env
# PS1+="\$(prompt_rvm \"${white} ${blue}\" 2>/dev/null)"; # rvm version
# PS1+="\$(prompt_nvm \"${white} ${violet}\" 2>/dev/null)"; # nvm version
# PS1+="\[${white}\] ";
# PS1+="\[${green}\]\w"; # working directory
# PS1+="\$(prompt_git \"${white} on ${violet}\" 2>/dev/null)"; # Git repository details
# PS1+="\n";
# PS1+="\[${white}\]\$ \[${reset}\]"; # `$` (and reset color)
# export PS1;

# # Need install gnu sed: `brew install gnu-sed --with-default-names`
# PS2="\[${yellow}\]→ \[${reset}\]";
# export PS2;
