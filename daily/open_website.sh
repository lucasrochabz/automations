#!/bin/bash

url="$1"
[[ "$url" != http* ]] && url="https://$url"

google-chrome --new-tab "$url"
