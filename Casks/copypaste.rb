cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.1"
  sha256 arm:   "e8929f878bb714209bb765dc61400f579e591130287730a4b62672223b9017b6",
         intel: "208f2a7733f823a77a59853c017846e08c66bda11de8a370eec727e57a67d781"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.1/copypaste-installer-3.0.1-macos-#{arch}.dmg"
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
