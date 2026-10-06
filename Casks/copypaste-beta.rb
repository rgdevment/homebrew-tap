cask "copypaste-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0-rc4"
  sha256 arm:   "5e8019a19b8eb324689f43e542d69fe2b3a97f21b9abbac93a3f006be7398172",
         intel: "37c1f7dae215e786c235e54cdd00628f3633566da7cd4f436b386d3eb28525dd"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.0-rc4/copypaste-installer-3.0.0-rc4-macos-#{arch}.dmg"
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
