# Command line, Git aliases
source ~/code/dotfiles/aliases
source ~/code/dotfiles/env
source ~/code/dotfiles/functions

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Bash coloring
function bash_prompt
{
  local RED="\[\e[1;31m\]"
  local BLUE="\[\e[0;36m\]"
  local BLACK="\[\e[1;30m\]"
  PS1="${BLACK}[${RED}\u${BLUE}:${BLACK}\w${BLACK}]${BLACK}$ "
}

bash_prompt

# Primsly
alias primsly="ssh -i ~/.ec2/primsly-keypair ubuntu@web01.primsly.com"
