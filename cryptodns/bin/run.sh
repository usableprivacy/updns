#!/bin/bash

if [[ -v POD_NAME ]]; then
  service_host="${POD_NAME}_NAMESERVER_SERVICE_HOST"
  service_port="${POD_NAME}_NAMESERVER_SERVICE_PORT"
  dns_ips="${!service_host}:${!service_port}"
else
  dns_ips=$(getent hosts nameserver | awk 'BEGIN{ORS=":5300 ";}{print $1}')
fi

if [[ -v DEBUG ]]; then
  dnsdist -v --supervised --uid 1000 $dns_ips
else
  dnsdist --supervised --uid 1000 $dns_ips
fi