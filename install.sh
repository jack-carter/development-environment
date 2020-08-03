#!/usr/bin/env bash

{ # download entire script #

set -u

# HomeBrew, if not installed, then install
if [[ -z `which brew` ]]; then
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash
  brew --version 
  if [[ $? -gt 0 ]]; then
    echo "ERROR: something didn't install properly for HomeBrew"
    exit 1
  fi
  git --version
  if [[ $? -gt 0 ]]; then
    echo "ERROR: something didn't install properly for git"
    exit 2
  fi
fi

# nvm, if not installed then install
if [[ -z `command -v nvm` ]] && [[ -z `which nvm` ]]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  nvm --version
  if [[ $? -gt 0 ]]; then
    echo "ERROR: something didn't install properly for nvm"
    exit 3
  fi
fi

# bash environment, if not installed then install
if [[ ! -f ~/bash ]]; then
  git clone https://github.com/jack-carter/bash.git ~ && mv ~/bash ~/.bash
  echo "[[ -f ~/.bash/profile ]] && source ~/.bash/profile" >> ~/.bash_profile
fi

} # entire script downloaded #
