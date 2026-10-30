# dotfiles
## 構成

- `home/dot_config/`: `~/.config`、Neovim は Windows と共有
- `home/dot_bin/` / `dot_wallpaper/`: `~/.bin` / `~/.wallpaper`
- `home/AppData/`: Windows の Neovim / Alacritty / CorvusSKK
- `home/.chezmoidata.toml`: 共通設定 / PC 別設定
- `home/.chezmoiignore`: OS / ディストリ / デスクトップ別の配置ルール
- `home/.chezmoitemplates/`: niri のモニター設定など

## 導入

[chezmoi](https://www.chezmoi.io/install/) と Git をインストールする.

```sh
chezmoi init shaaaaaQ
chezmoi managed
chezmoi diff
chezmoi apply
chezmoi verify
```

## PC 別設定

`chezmoi edit-config` で既存の `[data]` を編集する. `sourceDir` は維持する.

```toml
[data]
machine = "laptop"
desktop = "niri"
powershell = false
```

`home/.chezmoidata.toml` に PC を追加する:

```toml
[machines.laptop]
desktop = "niri"
niriOutputs = "niri/laptop.kdl"
```

`home/.chezmoitemplates/niri/laptop.kdl` にモニター設定を書く:

```kdl
output "eDP-1" {
    scale 1.25
}
```

- `machine` が空なら hostname を使用. PC 側の `desktop` 指定を優先する
- `niriOutputs` 未指定時は output 設定なし
