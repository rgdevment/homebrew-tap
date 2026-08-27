cask "copypaste" do
  version "2.12.0"
  sha256 "796cea608d7d5fc480cac6b2519d056871c4d95955b18560f7d1aeb22f17fac1"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.12.0/CopyPaste_2.12.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: :ventura

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
