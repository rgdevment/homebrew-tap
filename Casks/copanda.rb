cask "copanda" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.5.1"
  sha256 arm:   "ffb3c62540c780a8f797090017f3b58a8b7c474f96d459355ad8462eb334b283",
         intel: "e8f59f3bbc489016d1eea9b5965eee901b0e6d674e332d82a0967b07428161ee"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.5.1/copanda-installer-3.5.1-macos-#{arch}.dmg"
  name "CoPanda"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine"
  homepage "https://www.copanda.app/"

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
