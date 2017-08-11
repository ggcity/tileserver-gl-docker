FROM klokantech/tileserver-gl

VOLUME /data
VOLUME /styles
VOLUME /fonts
VOLUME /config

WORKDIR /data

ENV NODE_ENV="production"

EXPOSE 80
ENTRYPOINT ["/usr/src/app/run.sh"]
