#!/bin/bash

echo "[Open Ports and Services]"

if command -v ss >/dev/null 2>&1; then
  ss -tuln
elif command -v netstat >/dev/null 2>&1; then
  netstat -tuln
else
  echo "  Neither 'ss' nor 'netstat' command found."
fi
