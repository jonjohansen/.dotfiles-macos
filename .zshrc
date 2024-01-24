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

# Syntax highlighting
if type brew &>/dev/null; then
  FPATH=/usr/local/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(completion history)

export RIKSTV_NPM_AUTH='YWlyaGVhZC1KNEJEY2ZucXM='

eval "$(starship init zsh)"

zstyle ':completion:*' menu select
fpath+=~/.zfunc
