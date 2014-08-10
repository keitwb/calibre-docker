#!/bin/bash

export CALIBRE_CONFIG_DIRECTORY=/calibre-library

/opt/calibre/calibre-server --with-library /calibre-library -p 8080 \
  --password ${CALIBRE_PASSWORD:-calibre} --username ${CALIBRE_USERNAME:-calibre} \
  2>&1 > /var/log/calibre.log
