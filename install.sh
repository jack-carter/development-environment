#!/bin/bash

set -u

# HomeBrew, if not installed, then install
if [[ -z `which brew` ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" | bash
  brew --version
  if [[ $? -ge 0 ]]; then
    echo "ERROR: something didn't install properly for HomeBrew"
    exit 1
  fi
fi

# nvm, if not installed then install
if [[ -z `command -v nvm` ]] && [[ -z `which nvm` ]]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  nvm --version
  if [[ $? -ge 0 ]]; then
    echo "ERROR: something didn't install properly for nvm"
    exit 2
fi

