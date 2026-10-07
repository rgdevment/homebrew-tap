cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.1.3"
  sha256 arm:   "995605b7bf57b59fec0715178c570c360644781725e0927a8a414abce80c5f61",
         intel: "64adb49f6a9c75356019d81ee775bcb802b9492b362650e8870889b4dd6e08f1"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.1.3/copypaste-installer-3.1.3-macos-#{arch}.dmg"
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
