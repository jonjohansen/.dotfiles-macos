### MacOS settings ###
source check_errors.sh
# Set scrolling direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false; check_errs $?

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true; check_errs $?