cask "copypaste" do
  version "2.2.6"
  sha256 "8572af5c3b501a2383b0e9c71ce21b6454a538f76bcff59693c3f2cc2023836f"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.6/CopyPaste_2.2.6_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
