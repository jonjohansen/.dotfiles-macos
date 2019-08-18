### Should start the installation ###

# Get sudo from user for this session
sudo -v 

# Install brew
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade
brew tap homebrew/bundle
brew bundle

# Handle iterm2 config after installing it
./iterm2.sh 
