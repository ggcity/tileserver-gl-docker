FROM klokantech/tileserver-gl:v2.6.0


VOLUME /data
VOLUME /styles
VOLUME /fonts
VOLUME /config

WORKDIR /data

EXPOSE 80
ENTRYPOINT ["/usr/src/app/run.sh"]
