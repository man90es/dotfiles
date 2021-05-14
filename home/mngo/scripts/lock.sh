#!/bin/sh

maim -u | convert png:- -blur 0x8 -fill black -colorize 50% png:- | composite -gravity center ~/.config/lock.png png:- /tmp/locked.png
i3lock -ufei /tmp/locked.png
