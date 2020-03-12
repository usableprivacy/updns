ARG DNS_PROVIDER=cloudflare
FROM certbot/dns-${DNS_PROVIDER}
COPY certificates.sh /usr/local/bin
RUN chmod +x /usr/local/bin/certificates.sh
ENTRYPOINT /usr/local/bin/certificates.sh