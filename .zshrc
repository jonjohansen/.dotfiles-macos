# Path to your oh-my-zsh installation.
export DOTFILES="$HOME/.dotfiles-macos"

# Set UPDATE interval for zsh
export UPDATE_ZSH_DAYS=7

# Auto fetch interval
GIT_AUTO_FETCH_INTERVAL=300
# Load spaceship theme settings
#source $DOTFILES/.spaceship
# Load path settings
source $DOTFILES/.path
# Load aliases
source $DOTFILES/.alias

# Autojump init
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

eval "$(starship init zsh)"
