cask "copypaste" do
  version "2.6.2"
  sha256 "30829cf1b0f82eabf3b556da210867a78bb2f5a9d81f98816a4cba59b26fb0ee"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.2/CopyPaste_2.6.2_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
