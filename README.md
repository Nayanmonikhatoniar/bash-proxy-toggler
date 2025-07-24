# wsl-proxy-switcher

Minimal, manual proxy toggle script for **Bash** users on **WSL Debian 12**.

## Features

- Simple `enable_proxy` and `disable_proxy` functions to set/unset proxy environment variables.
- No automatic network detection (WSL limitation).
- Easy to integrate and customize.
- Works in Bash shells on WSL only.

## Usage

1. Save `proxy.sh` in `~/.config/`:

    ```
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
    ```

2. Source the script in your `~/.bashrc`:

    ```
    source ~/.config/proxy.sh
    ```

3. Reload your shell or run:

    ```
    source ~/.bashrc
    ```

4. Use the commands:

    ```
    enable_proxy   # to activate proxy
    disable_proxy  # to deactivate proxy
    ```

## Notes

- Replace `your.proxy.host` and ports with your actual proxy details.
- Proxy toggling is manual; no automatic network detection in WSL.
- Proxy variables affect only the Bash environment on WSL.

