cask "copanda" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.3.1"
  sha256 arm:   "aea8c75156e1e1ed8a9a00c42cffc0d8bfa46a4ae7aa31b8ee1cc0d9583e0903",
         intel: "b67d06e3e89c83c8ed04bfcbfbb723ddb8d28e7e880c3d40e757e14d4b402751"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.3.1/copanda-installer-3.3.1-macos-#{arch}.dmg"
  name "CoPanda"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine"
  homepage "https://www.copanda.app/"

  auto_updates true

  conflicts_with cask: ["copanda-beta"]
  depends_on macos: :ventura

  app "CoPanda.app"

  uninstall quit: "com.rgdevment.copypaste"

  zap trash: [
    "~/Library/Application Support/CopyPaste",
    "~/Library/Preferences/com.rgdevment.copypaste.plist",
    "~/Library/Saved Application State/com.rgdevment.copypaste.savedState",
  ]

  caveats <<~EOS
    CoPanda was called CopyPaste until 3.2. Coming from it, your history,
    settings and shortcut carry over, and the app is CoPanda in Applications.
  EOS
end
