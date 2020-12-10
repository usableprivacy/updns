#!/bin/sh
set -e

# get cryptodns container IP
resolver_ip=$(getent hosts cryptodns | awk '{print $1}')

# set test variables
valid_domain=duckduckgo.com
filtered_domain=doubleclick.net
interval=10

echo "\nupdns"

while :; do
  echo "\nSleep $interval seconds until (re)testing ..."
  sleep $interval

  echo "\nDoH resolver: $LETS_ENCRYPT_DOMAIN:4453"
  JSON=1 dnslookup "$valid_domain" https://"$LETS_ENCRYPT_DOMAIN":4453/query "$resolver_ip" | jq '.Question[0].Name, .Answer[0].A'
  JSON=1 dnslookup "$filtered_domain" https://"$LETS_ENCRYPT_DOMAIN":4453/query "$resolver_ip" | jq '.Question[0].Name, .Answer[0].A'

  echo "\nDoT resolver: $LETS_ENCRYPT_DOMAIN:853"
  JSON=1 dnslookup "$valid_domain" tls://"$LETS_ENCRYPT_DOMAIN":853/ "$resolver_ip" | jq '.Question[0].Name, .Answer[0].A'
  JSON=1 dnslookup "$filtered_domain" tls://"$LETS_ENCRYPT_DOMAIN":853/ "$resolver_ip" | jq '.Question[0].Name, .Answer[0].A'
  echo "\nupdns tests completed successfully."

done
