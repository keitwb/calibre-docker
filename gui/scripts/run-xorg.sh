#!/bin/bash

exec /usr/bin/Xorg +extension GLX +extension RANDR +extension RENDER -config /etc/X11/xorg.conf $DISPLAY

