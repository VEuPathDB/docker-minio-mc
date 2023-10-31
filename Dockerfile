FROM alpine:3.18.4

ADD https://dl.minio.io/client/mc/release/linux-amd64/archive/mc.RELEASE.2023-10-24T21-42-22Z /usr/bin/mc

RUN apk add --no-cache netcat-openbsd ca-certificates \
    && chmod +x /usr/bin/mc

ENTRYPOINT [ "mc" ]
