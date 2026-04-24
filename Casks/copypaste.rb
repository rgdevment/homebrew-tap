cask "copypaste" do
  version "2.3.0"
  sha256 "b0cd63960e8d6ccbd698bfb07116803e2d1005c45f68056264435c101cb78a00"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.3.0/CopyPaste_2.3.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
