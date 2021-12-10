#!/bin/zsh
############################# Dotfiles Setup
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/StepBroBD/Dotfiles/master/setup.sh | zsh
############################# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
