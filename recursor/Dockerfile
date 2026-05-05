FROM debian:13-slim

RUN apt-get update && apt-get install -y --no-install-recommends adduser
COPY conf/FD380FBB-pub.asc /etc/apt/keyrings/rec-53-pub.asc
COPY conf/pdns.list /etc/apt/sources.list.d/pdns.list
COPY conf/pdns.pin /etc/apt/preferences.d/pdns

RUN apt-get update && apt-get install pdns-recursor -y

RUN adduser --system --group --no-create-home --uid 1033 updns
RUN mkdir /var/run/pdns-recursor
RUN chown -R updns:updns /var/run/pdns-recursor
COPY recursor.conf /etc/powerdns/recursor.conf
COPY conf/filter.lua /etc/powerdns/recursor.d/filter.lua
COPY conf/filter.conf /etc/powerdns/recursor.d/filter.conf

RUN apt-get autoremove -y && apt-get clean

USER updns
ENTRYPOINT ["/usr/sbin/pdns_recursor", "--enable-old-settings"]
