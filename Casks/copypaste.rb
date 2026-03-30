cask "copypaste" do
  version "2.2.3"
  sha256 "8072eb5a2f140eb7052c608b9b2f6d702caadea5ec953b18600f0d5b26854949"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.3/CopyPaste_2.2.3_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
