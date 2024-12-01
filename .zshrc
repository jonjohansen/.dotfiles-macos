# Path to your oh-my-zsh installation.
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

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Add auto-suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export ZSH_AUTOSUGGEST_STRATEGY=(
    completion
    history
)

# Add zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Add NVM dir
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

# Additional syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
