cask "copypaste-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0-rc2"
  sha256 arm:   "6a4e90e8c2ca7b5a4a12d49ba7d1fbdee71918a5211801d0612132f65eb05682",
         intel: "a6250dd9dcc5afdcba63150d8b4aa7b1be75631d742257b00cca9df18f5d57ae"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.0-rc2/copypaste-installer-3.0.0-rc2-macos-#{arch}.dmg"
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
