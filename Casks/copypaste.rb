cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.1.4"
  sha256 arm:   "85b8d642bd84ffc91c6eb01661bf2b7075f230e313716b57ddbe43cb399fb326",
         intel: "6a2f2f1747b60edaaca2a256b3e3ee8c69c5100007df2661bc59be359c2148a4"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.1.4/copypaste-installer-3.1.4-macos-#{arch}.dmg"
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
