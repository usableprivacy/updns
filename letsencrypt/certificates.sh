#!/bin/sh

certbot certonly --agree-tos --non-interactive -m ${LETS_ENCRYPT_MAIL} --dns-${DNS_PROVIDER} \
--dns-${DNS_PROVIDER}-credentials /etc/letsencrypt/dns_credentials/${DNS_PROVIDER}.ini \
--cert-name updns -d ${LETS_ENCRYPT_DOMAIN} ${LETS_ENCRYPT_CUSTOM_FLAGS}

while true; do
  certbot renew
  sleep 12h
done