# Command line, Git aliases
source ~/code/dotfiles/aliases
source ~/code/dotfiles/env
source ~/code/dotfiles/functions

# Bash coloring
function bash_prompt
{
  local RED="\[\e[1;31m\]"
  local BLUE="\[\e[0;36m\]"
  local BLACK="\[\e[1;30m\]"
  local GREEN="\[\033[0;32m\]"
  local NO_COLOR="\[\033[0m\]"
  PS1="${BLACK}[${GREEN}\u${BLUE}:${BLACK}\w${BLACK}]${BLUE}$ "
}

bash_prompt
