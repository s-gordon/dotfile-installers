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

clone "zplug" "https://github.com/zplug/zplug.git" "${HOME}/.zplug" &&
  printf "DONE! \n"
