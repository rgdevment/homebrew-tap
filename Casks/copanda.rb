cask "copanda" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.2.0"
  sha256 arm:   "a6645160c1ac72853411489122885431c224b9d2f0890720d84a468bc38abd10",
         intel: "252dacf9c6119a92399d09ebb0ca4c2c143387d5bf0a23569f9a739e43c76d87"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.2.0/copanda-installer-3.2.0-macos-#{arch}.dmg"
  name "CoPanda"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine"
  homepage "https://www.copanda.app/"

  auto_updates true

  conflicts_with cask: ["copanda-beta", "copypaste-beta"]
  depends_on macos: :ventura

  app "CoPanda.app"

  uninstall quit: "com.rgdevment.copypaste"

  zap trash: [
    "~/Library/Application Support/CopyPaste",
    "~/Library/Preferences/com.rgdevment.copypaste.plist",
    "~/Library/Saved Application State/com.rgdevment.copypaste.savedState",
  ]
end
