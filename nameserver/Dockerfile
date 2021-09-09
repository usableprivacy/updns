FROM debian:11-slim
RUN apt-get update && apt-get install dnsmasq supervisor inotify-tools -y
COPY bin/*.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY supervisord.conf /etc/supervisor/supervisord.conf
RUN mkdir -p /var/run/supervisor
RUN chown dnsmasq /var/run/supervisor
RUN mkdir -p /var/log/supervisor
RUN chown -R dnsmasq /var/log/supervisor
USER dnsmasq
ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]