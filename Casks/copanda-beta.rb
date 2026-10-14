cask "copanda-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.2.0-rc1"
  sha256 arm:   "4ad83d14eb7ecd4382e2966edcfad89003d6dfbb836ddf222a96b658134868ad",
         intel: "a7ede27327b482f2bd3c4a4f7db32df9d8a812577ae4e5cd7b803a1989a80e91"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.2.0-rc1/copanda-installer-3.2.0-rc1-macos-#{arch}.dmg"
  name "CoPanda"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine (beta)"
  homepage "https://www.copanda.app/"

  auto_updates true

  conflicts_with cask: ["copanda", "copypaste"]
  depends_on macos: :ventura

  app "CoPanda.app"

  uninstall quit: "com.rgdevment.copypaste"

  zap trash: [
    "~/Library/Application Support/CopyPaste",
    "~/Library/Preferences/com.rgdevment.copypaste.plist",
    "~/Library/Saved Application State/com.rgdevment.copypaste.savedState",
  ]
end
