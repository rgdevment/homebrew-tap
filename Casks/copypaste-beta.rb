cask "copypaste-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0-rc3"
  sha256 arm:   "6227a36a002f5fd5f864b7ca865f7f690badefaaf31f17548d92a801661cb1be",
         intel: "6ed7154e0912874f408c93cc825382501eee09e900867abb24856c5237a088bb"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.0-rc3/copypaste-installer-3.0.0-rc3-macos-#{arch}.dmg"
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
