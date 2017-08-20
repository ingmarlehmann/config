#!/bin/bash

#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run xscreensaver -no-splash
run pasystray
run termite
run firefox
run nm-applet
