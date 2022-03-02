FROM debian:bullseye-slim

RUN apt-get update && apt-get install pdns-recursor dnsutils -y
RUN mkdir /var/run/pdns-recursor
RUN chown -R pdns:pdns /var/run/pdns-recursor
COPY recursor.conf /etc/powerdns/recursor.conf
COPY conf/filter.lua /etc/powerdns/recursor.d/filter.lua
COPY conf/filter.conf /etc/powerdns/recursor.d/filter.conf
ENTRYPOINT ["pdns_recursor"]
