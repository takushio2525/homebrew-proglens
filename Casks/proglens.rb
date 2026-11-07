# progLens のリリースの小道具が書く（手で直さない）
cask "proglens" do
  version "0.1.5"
  sha256 "247a4cc1d7cf056e2dcb93726e09061dbc623e3880de7eeb3414b1d23970f0bd"

  url "https://github.com/takushio2525/proglens-releases/releases/download/v#{version}/progLens-#{version}-macos-arm64.zip"
  name "progLens"
  desc "Desktop app to read and review AI-written code"
  homepage "https://proglens.takushio2525.com"

  depends_on arch: :arm64
  depends_on macos: :ventura

  # アプリが自分で更新する（brew upgrade では上げない）
  auto_updates true

  app "progLens.app"

  zap trash: [
    "~/.proglens",
    "~/Library/Application Support/progLens",
    "~/Library/Preferences/dev.proglens.desktop.plist",
    "~/Library/Saved Application State/dev.proglens.desktop.savedState",
  ]

  caveats <<~EOS
    progLens はコード署名をしていません（ad-hoc 署名）。初めて開く前に隔離の印を外してください:
      xattr -dr com.apple.quarantine #{appdir}/progLens.app

    入れたあとの更新はアプリの中から行えます（アプリが新しい版を確かめて入れ替えます）。
  EOS
end
