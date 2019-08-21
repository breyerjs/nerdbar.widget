#!usr/bin/bash

# Tells you if the laptop is charging (+) or not (-).
addendum='+'
if [[ $(pmset -g ps | head -1) =~ "Battery Power" ]]
    then addendum='-'
fi

echo bat: $(pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';')$addendum
