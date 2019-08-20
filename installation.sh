### Should start the installation ###
export DOTFILES="$HOME/.dotfiles-macos"

# Get sudo from user for this session, just in case
sudo true

#Install brew if it is not installed
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade
brew tap homebrew/bundle
brew bundle

# Set iterm settings to target config file
./iterm2.sh 

# Install the settings for the mac
./macos.sh

# Remove zshrc if it exists, and symlink this in
rm -rf $HOME/.zshrc
ln -s $DOTFILES/.zshrc $HOME/.zshrc

## Global git config
# Replace .gitconfig with symlink here
rm -rf $HOME/.gitconfig
ln -s $DOTFILES/git/.gitconfig $HOME/.gitconfig
# Replace .gitignore with symlink here
rm -rf $HOME/.gitignore
ln -s $DOTFILES/git/.gitignore $HOME/.gitignore