#!/bin/bash
# google-chrome --no-first-run --new-window
google-chrome --new-window "https://accounts.google.com" "https://www.google.com" >/dev/null 2>&1 & disown

sleep 2

google-chrome --new-window "https://www.notion.so/login" "https://github.com/login" "https://chatgpt.com" >/dev/null 2>&1 & disown
