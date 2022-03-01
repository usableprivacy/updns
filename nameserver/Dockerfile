FROM debian:11-slim
RUN apt-get update && apt-get install dnsmasq -y
COPY dnsmasq.conf /etc/dnsmasq.conf
ENTRYPOINT ["dnsmasq", "-k"]
