cask "copypaste" do
  version "2.2.2"
  sha256 "391fa897568cb14caeaa321561c29faaba4ccb5accfcb1a6c36960dd0adecb86"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.2/CopyPaste_2.2.2_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
