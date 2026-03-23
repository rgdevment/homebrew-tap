cask "copypaste" do
  version "2.1.5"
  sha256 "67338eacdbe617eaf4c51dd29eb82d3b03a39147a1d84b2f6d2c94a5ac2df6c7"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.5/CopyPaste_2.1.5_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
