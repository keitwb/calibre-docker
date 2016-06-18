#!/bin/bash

inotifywait -rm /add-to-calibre/ -e create | while read basedir event filename
do
  chown calibre.calibre $basedir$filename
done
