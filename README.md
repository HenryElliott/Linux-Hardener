# Web Vulnerability Scanner

A CLI-based web scanner designed for learning and analyzing basic security issues in web applications.

## Features
- Extracts forms on webpages
- Checks for missing security headers
- Enumerates common sensitive directories
- Color-coded output using Rich

## Getting Started
1. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```
2. Add target URLs you have permission to test in `targets.txt`.
3. Run the scanner:
    ```bash
    python3 scanner/main.py
    ```

## Usage Notice
**DreadPulse** is intended for educational and authorized testing purposes only. Always ensure you have explicit permission before scanning any website.
