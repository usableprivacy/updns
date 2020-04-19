#!/bin/sh

dns_ips=$(getent hosts nameserver | awk 'BEGIN{ORS=":5300 ";}{print $1}')
dnsdist --supervised $dns_ips