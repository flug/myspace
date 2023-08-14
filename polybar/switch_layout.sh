#!/bin/bash

# Obtenez la disposition actuelle
current_layout=$(setxkbmap -query | awk '/layout/{print $2}')

# Changez de disposition en fonction de la disposition actuelle
if [ "$current_layout" == "us" ]; then
    setxkbmap fr
    echo ""
else
    setxkbmap us
    echo ""
fi

