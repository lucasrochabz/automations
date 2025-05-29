#!/bin/bash

open_folder() {
  if [ -z "$1" ]; then
    xdg-open .
  else
    xdg-open "$1"
  fi
}

open_folder "$1"
