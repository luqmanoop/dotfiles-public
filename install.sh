#!/usr/bin/env bash

# Install packages
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
brew install n # node version manager
brew install tree

# Install gui apps
brew install --cask iterm2
brew install --cask keycastr
brew install --cask appcleaner
brew install --cask selfcontrol
brew install --cask visual-studio-code
