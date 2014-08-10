#!/bin/bash -x

exec xvfb-run -s "-screen 0 ${XVFB_GEOMETRY:-1280x1024}x${XVFB_DEPTH:-16} +extension RANDR +extension GLX -ac" \
  -n 1 /opt/calibre/calibre --with-library /calibre-library --no-update-check
