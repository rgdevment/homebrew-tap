cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.1.0"
  sha256 arm:   "23d6c9c7c22bb550b72faf209677444be50fdb464da8878797bdad71adc6fc14",
         intel: "4ee4587dd733d34716f21f8e204bdd987c06357515a1bf351a431cf00ed62b67"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.1.0/copypaste-installer-3.1.0-macos-#{arch}.dmg"
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
