# bash-proxy-toggler
# bash-proxy-toggler

A **minimal proxy toggle script for Bash users on WSL Debian 12** (and other Linux systems), providing simple commands to enable or disable internet proxy environment variables manually.

## Key Features

- **Simple Bash functions** to enable or disable HTTP, HTTPS, FTP, and SOCKS proxies.
- **No dependencies or daemons**: just a straightforward script you source in your shell.
- Designed specifically for **WSL Debian 12 users**, but works on any Bash shell.
- **Manual toggling** due to WSL limitations (no network SSID detection).
- Includes an example snippet to easily source the script in your `.bashrc`.
- Instructions for preserving proxy in `sudo` sessions and `apt` configuration.

## Why Use a Proxy?

A proxy acts as an intermediary between your computer and the internet, helping you:

- Hide your real IP address.
- Access internet resources through a controlled network.
- Work behind corporate or school firewalls.

## How This Script Works

This repo provides two functions inside the `proxy.sh` script:

- `enable_proxy`: sets environment variables `http_proxy`, `https_proxy`, `ftp_proxy`, and `all_proxy` with your proxy server’s address.
- `disable_proxy`: unsets those variables, disabling proxy use.

Since WSL does not expose your Windows network info or SSID, **proxy toggling must be done manually** by running these commands.

## Getting Started

### 1. Clone This Repository

