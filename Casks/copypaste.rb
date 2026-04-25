cask "copypaste" do
  version "2.4.0"
  sha256 "e000222372163d660af15e4e4ae3641de929e1f4db7dd609f21cd679ec95c1c6"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.4.0/CopyPaste_2.4.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
