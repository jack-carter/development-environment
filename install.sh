#!/bin/bash

set -u

# HomeBrew, if not installed, then install
if [[ -z `which brew` ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" | bash
fi

