cask "copypaste" do
  version "2.1.1"
  sha256 "8073f37784391f1214dbff64b6b2b86e11efd69ca1849084986c9d4e016ffaa6"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.1/CopyPaste_2.1.1_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
