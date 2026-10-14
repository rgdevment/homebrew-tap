cask "copanda" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.2.1"
  sha256 arm:   "95adfa1145094334dcfee28f0a3ad95e2cf56cf4a0fa69ae4241c067447257fd",
         intel: "73c74cad2d1d70c9657719c9a0cc4a249c591907a5ea575b327b2e2fe99b5b38"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.2.1/copanda-installer-3.2.1-macos-#{arch}.dmg"
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
