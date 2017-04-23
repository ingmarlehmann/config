#!/bin/bash

#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run xscreensaver -no-splash
run /usr/local/bin/pasystray
