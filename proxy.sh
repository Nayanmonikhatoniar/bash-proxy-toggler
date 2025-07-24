#!/bin/bash

# Proxy toggle script for WSL Debian 12 Bash users
# Usage:
#   enable_proxy   # to enable proxy environment variables
#   disable_proxy  # to disable/unset proxy environment variables

enable_proxy() {
    export http_proxy="http://your.proxy.host:8080"
    export https_proxy="http://your.proxy.host:8080"
    export ftp_proxy="http://your.proxy.host:8080"
    export all_proxy="socks5://your.proxy.host:1080"
    export no_proxy="localhost,127.0.0.1,::1"
    echo "Proxy enabled"
}

disable_proxy() {
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset all_proxy
    unset no_proxy
    echo "Proxy disabled"
}
