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

### hyprslidr
https://gitlab.com/magus/hyprslidr
```bash
sudo apt install hyprland-dev
git clone https://gitlab.com/magus/hyprslidr
cd hyprslidr
# hyprland 0.41.2
git checkout 3ca76cc3d6f1ca53bf8f61224d7805966547ff14
make install
```

### niri
https://github.com/YaLTeR/niri/wiki/Getting-Started#manual-installation
```bash
git clone https://github.com/YaLTeR/niri
cd niri
sudo apt install libpipewire-0.3-dev clang
cargo build --release
sudo cp target/release/niri /usr/local/bin/
sudo cp resources/niri-session /usr/local/bin/
sudo cp resources/niri.desktop /usr/local/share/wayland-sessions/
sudo cp resources/niri-portals.conf /usr/local/share/xdg-desktop-portal/
sudo cp resources/niri.service /etc/systemd/user/
sudo cp resources/niri-shutdown.target /etc/systemd/user/
```