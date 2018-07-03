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

# Anaconda
export PATH=~/anaconda3/bin:$PATH

# virtualenv
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7

# Bash coloring
function bash_prompt
{
  local YELLOW="\[\e[1;93m\]"
  local RED="\[\e[1;31m\]"
  local CYAN="\[\e[0;36m\]"
  local BLACK="\[\e[1;30m\]"
  local GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\e[1;92m\]"
  local NO_COLOR="\[\033[0m\]"
  PS1="${CYAN}[${GREEN}\u@${YELLOW}\h${CYAN}:${CYAN}\W${CYAN}]${NO_COLOR}${LIGHT_GREEN}\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | sed 's/\(.*\)/ (\1) /g')${NO_COLOR}$ "
}

bash_prompt
