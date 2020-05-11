#
# Openjdk for the latest Debian Stable 
#
# Version     0.3
#

FROM huahaiy/debian

MAINTAINER Huahai Yang <hyang@juji-inc.com>

RUN \
  apt-get update  && \
  echo "===> install Java"  && \
  apt-get -y install openjdk-11-jdk  && \
  \
  \
  echo "===> clean up..."  && \
  apt-get -y --purge autoremove && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
