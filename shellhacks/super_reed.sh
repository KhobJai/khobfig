#!/bin/sh

sudo /sbin/sysctl -w vm.drop_caches=3
vm.drop_caches=3
dd if=tempfile of=/dev/null bs=1m count=1024
