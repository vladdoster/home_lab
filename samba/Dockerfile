FROM alpine

RUN apk add --update samba-common-tools \
                samba-client \
                samba-server

VOLUME ["/etc", "/var/cache/samba", "/var/lib/samba", "/var/log/samba",\
        "/run/samba"]

ENTRYPOINT ["smbd", "--foreground", "--log-stdout", "--no-process-group"]
CMD []
