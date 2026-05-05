FROM debian:13-slim

RUN apt-get update && apt-get install -y --no-install-recommends adduser
COPY conf/FD380FBB-pub.asc /etc/apt/keyrings/dnsdist-20-pub.asc
COPY conf/pdns.list /etc/apt/sources.list.d/pdns.list
COPY conf/pdns.pin /etc/apt/preferences.d/pdns

RUN apt-get update && apt-get install dnsdist -y

RUN adduser --system --group --no-create-home --uid 1033 updns
COPY bin/run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

RUN apt-get remove adduser -y && apt-get autoremove -y && apt-get clean

USER updns
EXPOSE 8053
ENTRYPOINT ["/usr/local/bin/run.sh"]