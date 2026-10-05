cask "copypaste-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0-rc1"
  sha256 arm:   "3a8a3c7d1a3e4456d513cb366105be9563af3ad7a0608023ebc6d93971eeb11b",
         intel: "a109f1dcf0e6468646d9c6ac891fe6b788e42b8126e06436b91fce81217c5ec8"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.0-rc1/copypaste-installer-3.0.0-rc1-macos-#{arch}.dmg"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine (beta)"
  homepage "https://rgdevment.com/copypaste/"

  auto_updates true

  conflicts_with cask: "copypaste"
  depends_on macos: :ventura

  app "CopyPaste.app"

  uninstall quit: "com.rgdevment.copypaste"

  zap trash: [
    "~/Library/Application Support/CopyPaste",
    "~/Library/Preferences/com.rgdevment.copypaste.plist",
    "~/Library/Saved Application State/com.rgdevment.copypaste.savedState",
  ]
end
