FROM alpine:3.18.4

ADD https://dl.minio.io/client/mc/release/linux-amd64/archive/mc.RELEASE.2024-07-31T15-58-33Z /usr/bin/mc

RUN apk add --no-cache netcat-openbsd ca-certificates \
    && chmod +x /usr/bin/mc

ENTRYPOINT [ "mc" ]
