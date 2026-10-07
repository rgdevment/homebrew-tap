cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.1.2"
  sha256 arm:   "9c82836f2de7ae982ac8298056a0236e4370d59f70836215804ff7e9a69faeb4",
         intel: "89f3384a43da8e85336be410a5833bdff9388789333be00bad04b0a451ed212c"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.1.2/copypaste-installer-3.1.2-macos-#{arch}.dmg"
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
