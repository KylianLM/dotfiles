#!/usr/bin/env bash

# Get current directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $DOTFILES_DIR/git/.gitconfig ~/.gitconfig
echo ".gitconfig has been installed"
