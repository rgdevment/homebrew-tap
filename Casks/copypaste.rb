cask "copypaste" do
  version "2.1.0"
  sha256 "4ddb5130b7dbdc7ce3f331ceba82e6cfe4da1b639474ac2963d6de7f28ac7883"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.0/CopyPaste_2.1.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
