# homebrew-proglens

AI が書いたコードを読み解き・レビューするデスクトップアプリ **progLens** の Homebrew の tap です。

```sh
brew install --cask takushio2525/proglens/proglens
xattr -dr com.apple.quarantine /Applications/progLens.app
```

- progLens はコード署名をしていません（ad-hoc 署名）。初めて開く前に上の `xattr` で隔離の印を外してください
- 入れたあとの更新はアプリの中から行えます（cask は `auto_updates`。`brew upgrade` では上げません）
- 消すときは `brew uninstall --cask proglens`（設定と作業の記録も消すなら `--zap`）
- 配布物: [takushio2525/proglens-releases](https://github.com/takushio2525/proglens-releases/releases)・ドキュメント: https://proglens.takushio2525.com
