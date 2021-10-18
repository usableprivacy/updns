FROM debian:11-slim
RUN apt-get update && apt-get install dnsmasq -y
COPY dnsmasq.conf /etc/dnsmasq.conf
USER dnsmasq
ENTRYPOINT ["dnsmasq", "-C", "/etc/dnsmasq.conf", "-c", "100", "-k"]