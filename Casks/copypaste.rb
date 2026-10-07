cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.1.1"
  sha256 arm:   "eb71cca7cbfd76c013cdacdff870e83eb2af5207ef970ced42dd27fb14c2cdda",
         intel: "aafcccd2274d067dd8f00eb34e6f74e03e5bc776b386bd40fc145c6f121115ec"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.1.1/copypaste-installer-3.1.1-macos-#{arch}.dmg"
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
