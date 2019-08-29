#!/usr/bin/env bash

function clone() {
  name=$1
  repo=$2
  dest=$3
  sleep 0.5
  if [ ! -d "$dest" ]; then
    printf "Cloning %s to %s \n" "$name" "$dest"
    sleep 0.5
    git clone --quiet "$repo" "$dest"
  else
    printf "%s already found in %s \n" "$name" "$(dirname "$dest")"
  fi
}


# set up base16 shell themes
# depending on what the os is, the git repo cloned and installation method
# will differ slightly
# if [ "$DIST" == "Linux" ]; then
BASE16_SHELL=$HOME/.config/base16-shell/
clone "base16-shell" "https://github.com/chriskempson/base16-shell.git" "$BASE16_SHELL"
# fi
