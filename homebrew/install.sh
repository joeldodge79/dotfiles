#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "ninux"  # disable linuxbrew for now
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi

if test $(which brew)
then
    echo " Installing brew packages"
    brew update
    brew install coreutils
    brew install tree
    brew install grc
    brew install fzf
    brew install --HEAD universal-ctags/universal-ctags/universal-ctags
    brew install git
    brew install bash-completion
fi

exit 0
