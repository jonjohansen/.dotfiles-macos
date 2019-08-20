### MacOS settings ###
 
# Set scrolling direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true