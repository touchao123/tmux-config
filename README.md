# tmux-config

Personal tmux configuration with tmux-mem-cpu-load and showmydisk.

## Status Bar

The status bar shows:

```
hostname:ip | CPU Temp. xx°C | mem-cpu-load | showmydisk(disk) | uptime | time | date
```

Left side: hostname and IP address
Right side: CPU temperature, memory/CPU load, disk usage, uptime, time, date

## Installation

```bash
git clone https://github.com/touchao123/tmux-config.git ~/tmux-config
cd ~/tmux-config
chmod +x install.sh
./install.sh
```

This will:
1. Set up .tmux/ and .tmux.conf
2. Initialize and update submodules (tmux-mem-cpu-load, showmydisk)
3. Compile and install tmux-mem-cpu-load
4. Compile and install showmydisk (disk usage display)
5. Reload tmux configuration

## Components

- [tmux-mem-cpu-load](https://github.com/touchao123/tmux-mem-cpu-load) — Memory and CPU usage in status bar
- [showmydisk](https://github.com/touchao123/showmydisk) — Disk usage display with `--tmux` flag

## Key Bindings

| Key | Action |
|-----|--------|
| `C-b` | Prefix key |
| `C-b r` | Reload config |
| `C-b \|` | Split window horizontally |
| `C-b -` | Split window vertically |
| `C-b h/j/k/l` | Navigate panes (vim-style) |
| `C-b m` | Toggle pane zoom |
| `C-b C` | Create new window with name prompt |
| `C-b C-b` | Switch to last window |

## Colors

Solarized-inspired color scheme with 256-color support.
