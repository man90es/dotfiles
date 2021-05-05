#!/bin/sh

ffmpeg -f x11grab -s 1920x1080 -r 1 -i :0.0 -qscale 0 video.mp4
