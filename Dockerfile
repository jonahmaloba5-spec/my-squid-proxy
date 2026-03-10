FROM ubuntu:22.04

RUN apt-get update && apt-get install -y squid apache2-utils && \
apt-get clean && rm -rf /var/lib/apt/lists*

COPY squid.conf /etc/squid/squid.config
COPY passwd /etc/squid/passwd

EXPOSE 3128
CMD ["squid", "N", "-d", "1"]
