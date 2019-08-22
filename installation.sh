### Basic installation of the dotfiles ###

# Colors
source helpers/colors
# Error function
source helpers/check_errors.sh

printf "${BLUE}Setting up some awesome dotfiles 😺${NC}\n"

# Save the path to the dotfiles
export DOTFILES="$HOME/.dotfiles-macos"

# Get sudo from user for this session, just in case
sudo true

# Install brew if it is not installed
if test ! $(which brew); then
  printf "${BLUE}Installing brew${NC}\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /dev/null
  check_errs $?
fi

printf "${BLUE}Updating brew. This might take a while..${NC}\n"
brew update > /dev/null; check_errs $?
brew upgrade > /dev/null; check_errs $?
brew tap homebrew/bundle > /dev/null; check_errs $?

printf "${BLUE}Installing from Brewfile..${NC}\n"
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
printf "${BLUE}Replacing global gitconfig & gitignore${NC}\n"
rm -rf $HOME/.gitconfig; check_errs $?
ln -s $DOTFILES/git/.gitconfig $HOME/.gitconfig; check_errs $?
# Replace .gitignore with symlink here
rm -rf $HOME/.gitignore; check_errs $?
ln -s $DOTFILES/git/.gitignore $HOME/.gitignore; check_errs $?

# VSCode
printf "${BLUE}Replacing vscode settings, keybindings and snippets. ${NC}\n"
# If the folder doesn't exist we create it
mkdir -p ~/Library/Application\ Support/Code/User/; check_errs $?
## Settings
ln -sf $DOTFILES/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json; check_errs $?
## Bindings
ln -sf $DOTFILES/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json; check_errs $?
## Snippets
ln -sf $DOTFILES/vscode/.dotfiles/VSCode/snippets/ ~/Library/Application\ Support/Code/User; check_errs $?

