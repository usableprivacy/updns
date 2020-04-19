#!/bin/sh

while true; do
  inotifywait -r -e modify /etc/dnsmasq.d
  supervisorctl restart dnsmasq
done