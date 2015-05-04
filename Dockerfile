FROM simplexsys/zulu-openjdk
MAINTAINER qsys <kurt.sys@gmail.com>

ENV VERTX_VERSION 2.1.5

ADD vert.x-${VERTX_VERSION}.tar.gz /opt
RUN ln -s /opt/vert.x-${VERTX_VERSION} /opt/vertx

VOLUME /opt/vertx/mods
EXPOSE 8080

ENTRYPOINT ["/opt/vertx/bin/vertx"]
