cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.1.5"
  sha256 arm:   "a48c84e527b5da7992c8575ef36d64fbf6ed15957253ae8f6a4599ae0ae1e498",
         intel: "fa992c646fa16305ea5136abcd76a077fd3b411ad9a75209a97a99e8179cae14"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.1.5/copypaste-installer-3.1.5-macos-#{arch}.dmg"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine"
  homepage "https://rgdevment.com/copypaste/"

  auto_updates true

  conflicts_with cask: "copypaste-beta"
  depends_on macos: :ventura

  app "CopyPaste.app"

  uninstall quit: "com.rgdevment.copypaste"

  zap trash: [
    "~/Library/Application Support/CopyPaste",
    "~/Library/Preferences/com.rgdevment.copypaste.plist",
    "~/Library/Saved Application State/com.rgdevment.copypaste.savedState",
  ]
end
