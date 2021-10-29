FROM alpine:edge
RUN apk update \
    && apk add --no-cache ca-certificates tzdata lego vault libcap \
    && update-ca-certificates

ENTRYPOINT [ "/usr/bin/lego" ]
