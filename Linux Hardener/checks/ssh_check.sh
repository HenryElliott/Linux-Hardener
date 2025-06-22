#!/bin/bash

echo "[SSH Settings]"

SSHD_CONF="/etc/ssh/sshd_config"
if [ ! -f "$SSHD_CONF" ]; then
  echo "  sshd_config not found."
  exit 0
fi

RootLogin=$(grep -Ei '^PermitRootLogin' "$SSHD_CONF" | tail -1 | awk '{print $2}')
if [[ "$RootLogin" == "yes" ]]; then
  echo "  [WARNING] Root login over SSH is allowed."
else
  echo "  Root login over SSH is disabled or not explicitly allowed."
fi

PassAuth=$(grep -Ei '^PasswordAuthentication' "$SSHD_CONF" | tail -1 | awk '{print $2}')
if [[ "$PassAuth" == "yes" ]]; then
  echo "  [WARNING] Password authentication is enabled (consider using keys)."
else
  echo "  Password authentication is disabled or not explicitly enabled."
fi
