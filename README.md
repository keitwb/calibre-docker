calibre-docker
==============

This is a set of Docker images for the Calibre E-book GUI and web server.

The ``Dockerfile`` in this base dir builds the calibre base image that the GUI
and server depend on.

The GUI image will run the calibre app inside a dummy xorg server that is
accessible with VNC through whatever local port is mapped to port 5900 inside
the container.

The server image simply runs the Calibre web server for downloading books on
port 8080.
