FROM ubuntu:16.04

RUN apt-get update \
    && apt-get clean \
    && apt-get install -y cron vim \
    && rm -rf /var/lib/apt/lists/*

COPY start_cron /start_cron

RUN chmod +x /start_cron \

ENTRYPOINT ["/start_cron"]
