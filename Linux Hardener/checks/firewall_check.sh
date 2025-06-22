#!/bin/bash

echo "[Firewall Status]"

if command -v ufw >/dev/null 2>&1; then
  STATUS=$(ufw status | head -1)
  echo "  ufw: $STATUS"
elif command -v firewall-cmd >/dev/null 2>&1; then
  STATE=$(firewall-cmd --state 2>/dev/null)
  if [[ "$STATE" == "running" ]]; then
    echo "  firewalld: running"
  else
    echo "  firewalld: not running"
  fi
else
  echo "  No ufw or firewalld detected."
fi
