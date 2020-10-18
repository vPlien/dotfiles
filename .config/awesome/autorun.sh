#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run autorandr
run xfce4-power-manager
run xautolock -enable
run cbatticon
run nitrogen --restore
run firefox
run franz
run bitwarden
