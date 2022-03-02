FROM debian:bullseye-slim

RUN apt-get update && apt-get install pdns-recursor -y
RUN adduser --system --group --no-create-home --uid 1033 updns
RUN mkdir /var/run/pdns-recursor
RUN chown -R updns:updns /var/run/pdns-recursor
COPY recursor.conf /etc/powerdns/recursor.conf
COPY conf/filter.lua /etc/powerdns/recursor.d/filter.lua
COPY conf/filter.conf /etc/powerdns/recursor.d/filter.conf
RUN apt-get clean
USER updns
ENTRYPOINT ["pdns_recursor"]
