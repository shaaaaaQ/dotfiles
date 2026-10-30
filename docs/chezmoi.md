## chezmoi

### Install

https://www.chezmoi.io/install/

### Initialize

chezmoi をインストールした後、以下を実行します。

```bash
chezmoi init shaaaaaq
chezmoi diff
chezmoi apply
```

### Commands

| コマンド | 説明 |
|---|---|
| `chezmoi init shaaaaaq` | GitHub から dotfiles を取得して初期化 |
| `chezmoi add <file>` | 実ファイルを管理対象に追加・変更を取り込む |
| `chezmoi edit <file>` | 管理元の設定ファイルを編集 |
| `chezmoi edit --apply <file>` | 編集後、そのファイルを自動反映 |
| `chezmoi diff` | 管理元と実ファイルの差分を確認 |
| `chezmoi status` | 変更対象の一覧を確認 |
| `chezmoi apply` | 管理元の設定を実ファイルに反映 |
| `chezmoi update` | GitHub から最新の設定を取得して反映 |
| `chezmoi cd` | 管理元ディレクトリへ移動 |
| `chezmoi data` | OS・ホスト名などのテンプレート変数を確認 |
| `chezmoi doctor` | chezmoi の環境を診断 |

### 基本的な操作

#### 1. 設定ファイルを変更する

管理元を編集し、実際の設定ファイルへ反映します。

```bash
chezmoi edit ~/.config/nvim/init.lua
chezmoi diff
chezmoi apply
```

GitHub に変更を保存します。

```bash
chezmoi cd
git add .
git commit -m "Update config"
git push
```

#### 2. 実ファイルを直接変更した場合

アプリ側で変更した設定や、直接編集したファイルを管理元へ取り込みます。

```bash
chezmoi add ~/.config/waybar/config.jsonc
```

変更を確認して GitHub に保存します。

```bash
chezmoi cd
git add .
git commit -m "Update waybar"
git push
```

※ テンプレート化されたファイルは、原則 `chezmoi edit` で管理元を編集してください。

#### 3. 別の PC に変更を反映する

```bash
chezmoi update
```

GitHub から最新の設定を取得して、自動的に反映します。

変更を確認してから反映したい場合：

```bash
chezmoi git -- pull
chezmoi diff
chezmoi apply
```

#### 4. 新しい設定ファイルを追加する

```bash
chezmoi add ~/.config/example/config.toml
chezmoi cd
git add .
git commit -m "Add example config"
git push
```

#### 5. 設定の適用前に確認する

```bash
chezmoi status
chezmoi diff
chezmoi apply --dry-run --verbose
```

問題がなければ反映します。

```bash
chezmoi apply
```

### 基本ワークフロー

**設定変更時：**

`chezmoi edit` → `chezmoi diff` → `chezmoi apply` → `git commit` → `git push`

**実ファイルを直接変更した場合：**

`chezmoi add` → `git commit` → `git push`

**別 PC で同期する場合：**

`chezmoi update`

### 参考リンク

- [chezmoi 公式ドキュメント](https://www.chezmoi.io/)
- [Daily operations](https://www.chezmoi.io/user-guide/daily-operations/)