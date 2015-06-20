#!/bin/bash -x

exec x11vnc -N -forever -display $DISPLAY -rfbport 5900 -rfbauth /opt/calibre/.vnc/passwd
