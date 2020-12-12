FROM debian:buster-slim
RUN apt-get update && apt-get install dnsmasq supervisor inotify-tools -y
COPY bin/*.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY supervisord.conf /etc/supervisor/supervisord.conf
ENTRYPOINT ["/usr/bin/supervisord", "-n"]