cask "copanda" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.2.2"
  sha256 arm:   "541df99599bbf9258a891736ca85c9b099c693fe524992b58cf4dd46339d9dae",
         intel: "28d384d04e79b7b33e22ea0ea04db60322203a6078d543064485c942344e6b40"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.2.2/copanda-installer-3.2.2-macos-#{arch}.dmg"
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
