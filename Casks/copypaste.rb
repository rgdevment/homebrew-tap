cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.2"
  sha256 arm:   "07258cda7f1dbaf2d6c52240cea895e3b21dfcd04787ece82e8698dc546520a2",
         intel: "0fbe02b662b16444b8ea093dbf50dd36d5e170451c6ea3e5a1d7b195450a01b4"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.2/copypaste-installer-3.0.2-macos-#{arch}.dmg"
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
