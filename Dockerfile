FROM alpine:edge

RUN apk upgrade --no-cache && apk add --no-cache ansible

COPY docker-entrypoint.sh /
ENTRYPOINT ["/bin/sh","/docker-entrypoint.sh"]
