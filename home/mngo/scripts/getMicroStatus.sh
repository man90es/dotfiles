#!/bin/sh

amixer sget Capture | grep 'Left:' | awk -F'[][]' '{ print $4 }'
