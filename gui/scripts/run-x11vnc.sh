#!/bin/bash -x

exec x11vnc -forever -geometry ${XVFB_GEOMETRY:-1280x1024} -display :1 -rfbauth /opt/calibre/.vnc/passwd
