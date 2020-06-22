# My Machine dotfiles

This is a basic script for installing my Linux Mint setup on any machine.

## What you needsudo docker run hello-world

- A Linux Mint 19+ machine with a clean install

## What you get on this:

- [x] **zsh** shell, better shell
- [x] **oh-my-zsh**, tool kit with lot of stuff
- [x] **antigen**, for syntax highlight on terminal
- [x] my basic setup for the **.zshrc**
- [x] **node** on lts,
- [x] **yarn** and **npm**
- [x] **create-react-app**, serverless and serverless-offline
- [x] **mkcert** for development in https standard
- [x] **create-cert** that will create a basic .cert folder for localhost use
- [x] a single **powerline** font
- [x] **Fira Code Sans** for visual studio code
- [x] **Godot Engine** for gamedev and gamejams
- [x] **Brave Browser**
- [x] **Discord App**
- [x] a folder on **~/bin/** for local use of scripts
- [x] **Insomnia** REST client test, one of the best
- [x] cinnamon **macOS** style
- [x] **Cuppertine** icons for more styling
- [x] **plank** for more convenient access to folders
- [x] **docker-ce** running on linux mint
- [x] **docker-compose** for better docker
- [x] **Rust** prepared for compiling, with all libs

### Fixing SSD NVMe M.2

Open the terminal and change the GRUB settings:

```sh
xed admin:///etc/default/grub
```

The following should be as this

```txt
GRUB_DEFAULT=0
GRUB_TIMEOUT_STYLE=hidden
GRUB_TIMEOUT=10
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="nvme_core.default_ps_max_latency_us=5500 quiet splash"
GRUB_CMDLINE_LINUX=""
```

The GRUB_CMDLINE_LINUX_DEFAULT=**"nvme_core.default_ps_max_latency_us=5500** quiet splash", should be a higher number.

After the change, `sudo update-grub` and `reboot`
