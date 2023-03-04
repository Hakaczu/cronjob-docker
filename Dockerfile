FROM alpine:latest
COPY crontab /etc/cron.d/crontab
COPY startup.sh .
COPY tasks.sh .
RUN set -x && \
    apk add --no-cache dcron && \
    chmod +x /startup.sh && \
    chmod +x /tasks.sh
CMD ["/startup.sh"]