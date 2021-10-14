ARG DNS_PROVIDER=cloudflare
FROM certbot/dns-${DNS_PROVIDER}
COPY certificates.sh /usr/local/bin
RUN chmod +x /usr/local/bin/certificates.sh
RUN adduser --system --no-create-home --uid 1000 updns
USER updns
ENTRYPOINT /usr/local/bin/certificates.sh