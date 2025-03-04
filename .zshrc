export DOTFILES="$HOME/.dotfiles-macos"

# Set UPDATE interval for zsh
export UPDATE_ZSH_DAYS=7

# Override the default wordchars and remove '/'
export WORDCHARS=$(echo "$WORDCHARS" | tr -d "/")

# Auto fetch interval
GIT_AUTO_FETCH_INTERVAL=300

# Set starship config variable
export STARSHIP_CONFIG=$DOTFILES/starship.toml

# Load path settings
source $DOTFILES/.path
# Load aliases
source $DOTFILES/.alias

if ! type brew &>/dev/null; then
  echo "\e[1;31mError: Homebrew is not installed. Please install it.\e[0m\n"
  return 1
fi

BREW_PREFIX=$(brew --prefix)

# Add zsh-completions
FPATH=$BREW_PREFIX/share/zsh-completions:$FPATH
autoload -Uz compinit
compinit

# Autojump
source $BREW_PREFIX/etc/autojump.sh

# Add auto-suggestions
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Additional syntax highlighting
source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH_AUTOSUGGEST_STRATEGY=(
    completion
    history
)


# Add NVM dir
export NVM_DIR="$HOME/.nvm"
source "/opt/homebrew/opt/nvm/nvm.sh"

eval "$(starship init zsh)"
