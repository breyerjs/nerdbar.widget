#!usr/bin/bash

echo bat: $(pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';')