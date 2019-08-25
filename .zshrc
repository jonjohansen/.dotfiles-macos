# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/.dotfiles-macos"

# Set theme
ZSH_THEME="spaceship"

# Set UPDATE interval for zsh
export UPDATE_ZSH_DAYS=7

# Plugins.
# More can be found at https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
plugins=(
  git # Bunch of aliases and a few tight functions for git
  git-auto-fetch # Fetches updates for git automatically
  osx # Shortcuts for macOS
  emoji # 🤠
  brew # Aliases for brew
)

# Auto fetch interval
GIT_AUTO_FETCH_INTERVAL=300

# Load ZSH-magic
source $ZSH/oh-my-zsh.sh
# Load spaceship theme settings
source $DOTFILES/.spaceship
# Load path settings
source $DOTFILES/.path
# Load aliases
source $DOTFILES/.alias