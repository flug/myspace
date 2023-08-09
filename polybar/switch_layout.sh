#!/bin/bash

# Obtenez la disposition actuelle
current_layout=$(setxkbmap -query | awk '/layout/{print $2}')

# Changez de disposition en fonction de la disposition actuelle
if [ "$current_layout" == "gb" ]; then
    setxkbmap fr
    echo ""
else
    setxkbmap gb
    echo ""
fi

