#!/bin/sh

sudo modprobe v4l2loopback exclusive_caps=1
ffmpeg -i http://192.168.0.12:8080/video -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
