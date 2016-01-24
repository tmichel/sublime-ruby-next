#!/bin/bash

PACKAGES_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages"
DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
FILES=(
  "$DIR/Ruby"
  "$DIR/Rails"
  "$DIR/MyMonokai.tmTheme"
)

check() {
  local path
  for file in ${FILES[*]}; do
    path="${file/$DIR/$PACKAGES_DIR}"
    if [ ! -L "$path" ]; then
      echo $file
    fi
  done
}

if [ "$1" = "--check" ]; then
  check
else
  ln -Fs "${FILES[@]}" "$PACKAGES_DIR"
fi

