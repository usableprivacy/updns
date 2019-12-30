#!/bin/sh

echo "using DNS server: $DNSCONTAINER"
dns_ip=$(getent hosts $DNSCONTAINER | awk '{ print $1 }')
dnsdist $dns_ip:5300 --supervised