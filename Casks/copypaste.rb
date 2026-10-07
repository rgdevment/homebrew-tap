cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.3"
  sha256 arm:   "d0ef6fc48afb14bad63d84c7e3f5623bcd47891117c49d48e7640130ada3221b",
         intel: "ee57c0fca29781e60374262d5df2099c57b495a6f9c532a3634fc252e4e780e5"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.3/copypaste-installer-3.0.3-macos-#{arch}.dmg"
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
