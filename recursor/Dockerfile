FROM debian:bullseye-slim

RUN apt-get update && apt-get install pdns-recursor dnsutils -y
RUN mkdir /var/run/pdns-recursor
RUN chown -R pdns:pdns /var/run/pdns-recursor
COPY recursor.conf /etc/powerdns/recursor.conf
ENTRYPOINT ["pdns_recursor"]
