#!/bin/bash

# Bloody ASCII banner for Linux Hardener
echo -e "\e[31m
 ██▓     ██▓ ███▄    █  █    ██ ▒██   ██▒    ██░ ██  ▄▄▄       ██▀███  ▓█████▄ ▓█████  ███▄    █ ▓█████  ██▀███  
▓██▒    ▓██▒ ██ ▀█   █  ██  ▓██▒▒▒ █ █ ▒░   ▓██░ ██▒▒████▄    ▓██ ▒ ██▒▒██▀ ██▌▓█   ▀  ██ ▀█   █ ▓█   ▀ ▓██ ▒ ██▒
▒██░    ▒██▒▓██  ▀█ ██▒▓██  ▒██░░░  █   ░   ▒██▀▀██░▒██  ▀█▄  ▓██ ░▄█ ▒░██   █▌▒███   ▓██  ▀█ ██▒▒███   ▓██ ░▄█ ▒
▒██░    ░██░▓██▒  ▐▌██▒▓▓█  ░██░ ░ █ █ ▒    ░▓█ ░██ ░██▄▄▄▄██ ▒██▀▀█▄  ░▓█▄   ▌▒▓█  ▄ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██▀▀█▄  
░██████▒░██░▒██░   ▓██░▒▒█████▓ ▒██▒ ▒██▒   ░▓█▒░██▓ ▓█   ▓██▒░██▓ ▒██▒░▒████▓ ░▒████▒▒██░   ▓██░░▒████▒░██▓ ▒██▒
░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒ ▒▒ ░ ░▓ ░    ▒ ░░▒░▒ ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ▒▒▓  ▒ ░░ ▒░ ░░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░░░▒░ ░ ░ ░░   ░▒ ░    ▒ ░▒░ ░  ▒   ▒▒ ░  ░▒ ░ ▒░ ░ ▒  ▒  ░ ░  ░░ ░░   ░ ▒░ ░ ░  ░  ░▒ ░ ▒░
  ░ ░    ▒ ░   ░   ░ ░  ░░░ ░ ░  ░    ░      ░  ░░ ░  ░   ▒     ░░   ░  ░ ░  ░    ░      ░   ░ ░    ░     ░░   ░ 
    ░  ░ ░           ░    ░      ░    ░      ░  ░  ░      ░  ░   ░        ░       ░  ░         ░    ░  ░   ░     
                                                                        ░                                        
\e[0m
"

# Make sure script is run with bash
if [ -z "$BASH_VERSION" ]; then
  echo "Please run this script with bash."
  exit 1
fi

# Some checks require sudo to get full info
if [[ $EUID -ne 0 ]]; then
  echo "Warning: Running without sudo may limit some results."
fi

echo "Linux Hardening Checklist Report"
echo "================================"
echo ""

# Run each check in the checks directory
for check in ./checks/*.sh; do
  echo "Running $(basename "$check")..."
  bash "$check"
  echo ""
done

echo "Scan complete."
