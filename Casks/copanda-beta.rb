cask "copanda-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.5.1-rc2"
  sha256 arm:   "11469b05a3dcd2a383185eeec6dcb15da3e4899a0edea034df6d068673da2f97",
         intel: "fc52f3cacc495943194832e986110ffef8800e1a5cff57f6bd6a82e8d2e80b56"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.5.1-rc2/copanda-installer-3.5.1-rc2-macos-#{arch}.dmg"
  name "CoPanda"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine (beta)"
  homepage "https://www.copanda.app/"

  conflicts_with cask: ["copanda"]
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
