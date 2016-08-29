#!/bin/bash 

exec 2>&1
exec /usr/local/kannel/sbin/bearerbox /etc/kannel/kannel.conf
exec /usr/local/kannel/sbin/smsbox /etc/kannel/kannel.conf
