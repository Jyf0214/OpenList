FROM openlistteam/openlist:latest-aio

USER root

RUN apk add --no-cache socat && \
    mkdir -p /opt/openlist/data && \
    chmod -R 0777 /opt/openlist/data

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5000 5244 5245

ENTRYPOINT ["/entrypoint.sh"]