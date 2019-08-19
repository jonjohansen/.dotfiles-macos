
##########################
# 🚀 S P A C E S H I P 🚀#
##########################

SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  docker
  venv
  pyenv
)

# USER & Host
SPACESHIP_USER_PREFIX=""      # remove `with` before username
SPACESHIP_USER_SUFFIX=""      # remove space before host
SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_COLOR="blue"

SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_SUFFIX=""
SPACESHIP_HOST_PREFIX=":"
SPACESHIP_HOST_SUFFIX=" "

# Remove chars
SPACESHIP_CHAR_SYMBOL=""
SPACESHIP_CHAR_SUFFIX=""
SPACESHIP_CHAR_PREFIX=""

# Display directory
SPACESHIP_DIR_PREFIX=""    # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC="1"    # show only last directory

# git in prompt
SPACESHIP_GIT_SHOW="true"
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""

# Result will look like this:
# username:host .oh-my-zsh on  master ⇣ // if there are squares, you need fonts bruh
