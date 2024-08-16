FROM debian:12-slim

RUN apt-get update && apt-get install curl -y
RUN curl https://repo.powerdns.com/FD380FBB-pub.asc | tee /etc/apt/keyrings/dnsdist-18-pub.asc
COPY conf/pdns.list /etc/apt/sources.list.d/pdns.list
COPY conf/pdns.pin /etc/apt/preferences.d/pdns

RUN apt-get update && apt-get install dnsdist -y

RUN adduser --system --group --no-create-home --uid 1033 updns
COPY bin/run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

RUN apt-get remove curl gnupg -y && apt-get autoremove -y && apt-get clean

USER updns
EXPOSE 8053
ENTRYPOINT ["/usr/local/bin/run.sh"]