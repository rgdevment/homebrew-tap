cask "copypaste" do
  version "2.8.0"
  sha256 "32d7486ba39fa75425cd0a5bf2904d678abefc47cb649e99f3dbc635a6cb7907"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.8.0/CopyPaste_2.8.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: :ventura

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
