### Basic installation of the dotfiles ###
# Colors
BLUE='\033[0;1;34m'
NC='\033[0m'
printf "${BLUE}Getting started on some awesome dotfiles 😺${NC}\n"

# Used for error checking throughout the script.
source check_errors.sh

# Save the path to the dotfiles
export DOTFILES="$HOME/.dotfiles-macos"

# Get sudo from user for this session, just in case
sudo true

# Install brew if it is not installed
if test ! $(which brew); then
  printf "${BLUE}Installing brew${NC}\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  check_errs $?
fi

brew update; check_errs $?
brew upgrade; check_errs $?
brew tap homebrew/bundle; check_errs $?
brew bundle; check_errs $?

printf "${BLUE}Setting iterm settings${NC}\n"
# Set iterm settings to target config file
./iterm2.sh; check_errs $?

printf "${BLUE}Setting macOS settings${NC}\n"
./macos.sh; check_errs $?

## Zsh config
# Remove zshrc if it exists, and symlink this in
printf "${BLUE}Replacing zsh config${NC}\n"
rm -rf $HOME/.zshrc; check_errs $?
ln -s $DOTFILES/.zshrc $HOME/.zshrc; check_errs $?

## Global git config
# Replace .gitconfig with symlink here
printf "${BLUE}Replacing git config${NC}\n"
rm -rf $HOME/.gitconfig; check_errs $?
ln -s $DOTFILES/git/.gitconfig $HOME/.gitconfig; check_errs $?
# Replace .gitignore with symlink here
rm -rf $HOME/.gitignore; check_errs $?
ln -s $DOTFILES/git/.gitignore $HOME/.gitignore; check_errs $?