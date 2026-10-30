#!/usr/bin/env python3
"""Read-only inventory of legacy targets and linked ancestors. Python 3.8+."""
import argparse
import os
from pathlib import Path
import stat


def inspect(path):
    try:
        info = path.lstat()
    except FileNotFoundError:
        return "missing"
    except OSError as exc:
        return "ERROR: " + str(exc)
    # Covers Windows directory junctions as well as symbolic links.
    if stat.S_ISLNK(info.st_mode) or (
        getattr(info, "st_file_attributes", 0)
        & getattr(stat, "FILE_ATTRIBUTE_REPARSE_POINT", 0x400)
    ):
        try:
            return "LINK -> " + os.readlink(path) + (" (dangling)" if not path.exists() else "")
        except OSError:
            return "REPARSE POINT (inspect in PowerShell)"
    return "directory" if stat.S_ISDIR(info.st_mode) else "file"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--home", type=Path, default=Path.home())
    parser.add_argument("--windows", action="store_true", default=os.name == "nt")
    args = parser.parse_args()
    home = args.home.absolute()
    if args.windows:
        paths = ["AppData/Local/nvim", "AppData/Roaming/alacritty",
                 "AppData/Roaming/CorvusSKK", "Documents/PowerShell"]
    else:
        dirs = ["nvim", "i3", "polybar", "rofi", "alacritty", "picom",
                "dunst", "Thunar", "libskk", "hypr", "niri", "waybar",
                "yazi", "ghostty"]
        paths = [".config/" + name for name in dirs]
        paths += [".config/fish/config.fish", ".config/fish/fish_plugins"]
        paths += [".config/fcitx5/conf/" + name + ".conf"
                  for name in ("classicui", "skk", "wayland")]
        paths += [".config/libinput-gestures.conf", ".bin", ".wallpaper"]
    print("Read-only inventory; no files will be changed. Home:", home)
    print("Back up link CONTENTS before updating the legacy checkout.")
    seen = set()
    for rel in paths:
        target = home / rel
        # Inspect ancestors first: a regular target file may live under a link.
        for path in list(reversed(target.parents)) + [target]:
            if path in seen:
                continue
            seen.add(path)
            kind = inspect(path)
            if path == target or "LINK" in kind or "REPARSE" in kind or "ERROR" in kind:
                print("{}\t{}".format(kind, path))


if __name__ == "__main__":
    main()
