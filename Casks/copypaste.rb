cask "copypaste" do
  version "2.1.5"
  sha256 "a6e7a2c545cad84962e80be416cd8f6dba01551636890b6904abdb5894f0f584"

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
