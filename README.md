### install fisher
```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher update
```

### rofi wayland (debian)
https://github.com/lbonn/rofi/blob/wayland/INSTALL.md
```bash
git clone --recursive https://github.com/lbonn/rofi
cd rofi/
sudo apt install libxkbcommon-x11-dev libxcb-xkb-dev libxcb-util-dev libgdk-pixbuf-2.0-dev libxkbcommon-dev libpango1.0-dev libcairo2-dev libglib2.0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-keysyms1-dev libstartup-notification0-dev wayland-protocols libwayland-dev flex bison
meson setup build
ninja -C build
ninja -C build install
```

### windows
cargo install
```bash
# alacritty
lsd
starship
uu_ln
uu_rm
# uu_touch
```

### TODO
ぜんぶignoreしてから必要なファイルだけあれする？