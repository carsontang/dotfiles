# Command line, Git aliases
source ~/dotfiles/aliases
source ~/dotfiles/env
source ~/dotfiles/functions
source ~/dotfiles/exports

# set Bash history
HISTFILE=$HOME/.bash_history
HISTSIZE=50000

# add ~/bin to PATH
export PATH=$PATH:~/bin

# add system virtualenv to PATH
export PATH=$PATH:~/.local/bin

# virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7

# Bash coloring
function bash_prompt
{
  local RED="\[\e[1;31m\]"
  local CYAN="\[\e[0;36m\]"
  local BLACK="\[\e[1;30m\]"
  local GREEN="\[\033[0;32m\]"
  local NO_COLOR="\[\033[0m\]"
  PS1="${CYAN}[${GREEN}\u${CYAN}:${CYAN}\w${CYAN}]${NO_COLOR}$ "
}

bash_prompt
