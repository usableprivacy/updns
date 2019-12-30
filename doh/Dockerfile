FROM debian:sid-slim
LABEL "traefik.frontend.entryPoints"="https"
LABEL "traefik.domain"="usableprivacy.net"
LABEL "traefik.frontend.rule"="Host:adfree.usableprivacy.net"
LABEL "traefik.application.port"="8053"
RUN apt-get update && apt-get install dnsdist -y
COPY run.sh .
COPY dnsdist.conf /etc/dnsdist/dnsdist.conf
RUN chmod +x run.sh
EXPOSE 8053
ENTRYPOINT ["./run.sh"]