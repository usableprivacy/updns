#!/bin/sh

while true; do
  inotifywait -r -e modify /certs
  supervisorctl restart dnsdist
done