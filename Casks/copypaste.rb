cask "copypaste" do
  version "2.0.0"
  sha256 "91ba9b5a83af8b63c2f1bbe5c3682c2cce2909eb418649acb4ccfb83fef1fa47"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.0.0/CopyPaste_2.0.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
