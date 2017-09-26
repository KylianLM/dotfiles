#!/usr/bin/env bash

# Get current directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Common functions

. "$DOTFILES_DIR/system/.function"

# Update dotfiles itself first

if is_executable git -a -d "$DOTFILES_DIR/.git"; then git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master; fi

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~

cp $DOTFILES_DIR/git/.gitconfig ~/.gitconfig
echo ".gitconfig has been installed"
