# Linux Hardening Checklist Tool

A lightweight, non-destructive Linux security scanner that generates a basic report of important system hardening checks.

---

## Features

- Checks SSH root login and password authentication settings  
- Tests firewall status (supports ufw and firewalld)  
- Lists system users with UID ≥ 1000  
- Displays open network ports and listening services  

---

## Installation & Usage

1. Clone or download the repository.

2. Make scripts executable:

    ```bash
    chmod +x main.sh checks/*.sh
    ```

3. Run the main script (recommended with sudo for complete checks):

    ```bash
    sudo ./main.sh
    ```

---

## Important Notes

- This tool only reads system configurations and does **not** modify any files.  
- Some checks require elevated privileges to provide full results.  
- Use responsibly and only on systems you own or have permission to test.

---

## About

Created by ShadowCrypt Solutions  
Focused on practical, secure, and educational Linux hardening.

---

## License

This project is released under the MIT License.

---
