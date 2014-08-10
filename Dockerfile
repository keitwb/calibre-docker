
FROM debian:wheezy

MAINTAINER Ben Keith <keitwb@gmail.com>

WORKDIR /tmp

RUN apt-get update -y -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -qq wget python xdg-utils imagemagick && \
    apt-get clean

RUN groupadd -r calibre && useradd -g calibre -d /opt/calibre -r -m calibre

RUN wget http://download.calibre-ebook.com/1.46.0/calibre-1.46.0-x86_64.tar.bz2

RUN apt-get install -y -qq bzip2 && \
    tar xvf calibre*.tar.bz2 -C /opt/calibre && \
    chown calibre:calibre -R /opt/calibre && \
    apt-get remove -y -qq bzip2 && \
    apt-get clean

RUN mkdir /calibre-library && chown calibre:calibre /calibre-library

VOLUME /calibre-library
