FROM alpine:latest
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY blacklist.conf /etc/dnsmasq.d/blacklist.conf
RUN apk add --no-cache dnsmasq bind-tools
#EXPOSE 53/udp
ENTRYPOINT ["dnsmasq", "-k", "-C", "/etc/dnsmasq.conf", "-d", "-c", "5000"]