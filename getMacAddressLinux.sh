#!/bin/bash
ifconfig | gawk '/[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]/ { print $5 }'
ifconfig | gawk '/[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]:[0-9A-Z][0-9A-Z]/ { print $NF }'
# OBS: $NF prints the last element of gawk
# ou
ifconfig | gawk --posix '/([0-9A-Z][0-9A-Z]:){5}[0-9A-Z][0-9A-Z]/ { print $0 }'
ifconfig | gawk --posix '/([0-9A-Z][0-9A-Z]:){5}[0-9A-Z][0-9A-Z]/ { print $NF }'

ip addr show | grep -v "00:00:00:00:00" | gawk --posix '/([0-9a-f][0-9a-f][:]){5}[0-9a-f]/ {print $2}'

# Get Last Parameter of gawk

ifconfig | gawk --posix '/([0-9A-Z][0-9A-Z]:){5}[0-9A-Z][0-9A-Z]/ { print $NF }'

# get the line that has the keyword "default" in menu.lst
cat -n menu.lst | gawk '/[^-]default($| [0-9])/ {print $0}'

# find the line that has the keyword "timeout" in menu.lst
cat -n menu.lst | gawk '/[^-]timeout($| [0-9])/ {print $0}'
