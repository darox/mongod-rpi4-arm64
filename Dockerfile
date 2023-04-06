FROM ubuntu:jammy

RUN set -eux; \
	groupadd --gid 1001 --system mongodb; \
	useradd --uid 1001 --system --gid mongodb --home-dir /data/db mongodb; \
	mkdir -p /data/db /data/configdb; \
	chown -R mongodb:mongodb /data/db /data/configdb

RUN apt-get update && \
    apt-get install libcurl4 libcurl4-openssl-dev -y

VOLUME /data/db /data/configdb

ENV HOME /data/db
COPY binary/mongodb /usr/local/bin/

USER mongodb
EXPOSE 27017
CMD ["mongodb"]