FROM keitwb/calibre-base

MAINTAINER Ben Keith <keitwb@gmail.com>

EXPOSE 5900
ENTRYPOINT /scripts/run.sh
VOLUME /var/log/supervisor

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq x11vnc supervisor xvfb && apt-get clean

ADD supervisor.conf /opt/calibre/supervisord.conf
ADD scripts /scripts
RUN chmod +x /scripts/*

