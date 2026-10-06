cask "copypaste-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0-rc5"
  sha256 arm:   "cec26e93eb03740121621ddabce5bdd5a57979900c707793290b0ffa85b7719a",
         intel: "dc3ea5bf5895b9fe3a33bd6091d63cfa798b3f25e777f1cb34d025ea44702e66"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.0-rc5/copypaste-installer-3.0.0-rc5-macos-#{arch}.dmg"
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
