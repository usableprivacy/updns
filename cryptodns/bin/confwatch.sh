#!/bin/sh

while true; do
  inotifywait -r -e modify /etc/dnsdist
  supervisorctl restart dnsdist
done
