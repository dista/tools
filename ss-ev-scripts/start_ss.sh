#!/bin/bash

sudo ss-redir -u -c /home/dista/Documents/ssserver.json -f /var/run/ssserver.pid
# wtf, 113.215.6.x wasu
sudo ss-nat -s 173.254.236.78 -l 12345 -w "`cat /home/dista/Documents/poison_dns_ips.acl`" -i /home/dista/Documents/chn.acl -u -o
