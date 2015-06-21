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

## ShareFi ##

# Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# ImageMagick
export MAGICK_HOME="/usr/local/Cellar/imagemagick/6.9.1-1"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
