### rofi wayland (debian)
```bash
sudo apt install rofi
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
sudo apt install libpipewire-0.3-dev clang libglibc2.0-dev libudev-dev libseat-dev libpango1.0-dev libdisplay-info-dev libgbm-dev libxkbcommon-dev libegl1-mesa-dev libwayland-dev libinput-dev libdbus-1-dev libsystemd-dev
cargo build --release
sudo cp target/release/niri /usr/local/bin/
sudo cp resources/niri-session /usr/local/bin/
sudo cp resources/niri.desktop /usr/local/share/wayland-sessions/
sudo cp resources/niri-portals.conf /usr/local/share/xdg-desktop-portal/
sudo cp resources/niri.service /etc/systemd/user/
sudo cp resources/niri-shutdown.target /etc/systemd/user/
sudo nvim /etc/systemd/user/niri.service
```
```bash
git clone https://github.com/Supreeeme/xwayland-satellite
cd xwayland-satellite
cargo build --release -F systemd
```
