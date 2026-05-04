FROM postgres:15-alpine

COPY rootfs/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY rootfs/healthcheck.sh /usr/local/bin/healthcheck.sh

RUN chmod +x /usr/local/bin/entrypoint.sh /usr/local/bin/healthcheck.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["postgres"]
