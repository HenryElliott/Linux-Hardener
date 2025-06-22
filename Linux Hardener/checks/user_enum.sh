#!/bin/bash

echo "[System Users]"
awk -F: '{ if ($3 >= 1000 && $3 != 65534) print "  " $1 }' /etc/passwd
