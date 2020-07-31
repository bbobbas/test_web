#!/bin/sh
less /var/log/nginx/web_test_access.log | awk '{print $1}' | sort | uniq > /var/log/nginx/uniq_ip
done
