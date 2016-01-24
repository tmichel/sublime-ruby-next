#!/bin/bash

PACKAGES_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages"
DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

ln -Fs "$DIR/Ruby" "$DIR/Rails" "$DIR/MyMonokai.tmTheme" "$PACKAGES_DIR"
