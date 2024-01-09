#!/bin/sh
set -e
HOSTINFO=$(/usr/bin/lsb_release -a 2>&1 | grep Description | /usr/bin/cut -d ":" -f2 | /usr/bin/tr -d [:blank:])
IPADDRS=$(/usr/sbin/ip a)
/usr/bin/echo -ne "Host OS: $HOSTINFO\n$IPADDRS\n" > /etc/issue
