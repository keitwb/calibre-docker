#!/bin/bash

mkdir -p -m 700 /opt/calibre/.vnc
x11vnc -storepasswd ${VNC_PASSWORD:-calibre} /opt/calibre/.vnc/passwd

chown -R calibre:calibre /opt/calibre/.vnc
chmod 600 /opt/calibre/.vnc/passwd

/usr/bin/supervisord -n -c /opt/calibre/supervisord.conf
