cask "copypaste" do
  version "2.1.2"
  sha256 "2a71ffac28c52160e0b2103780d4011c2aa0fc4f58a8b685b0e7508d614a04af"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.2/CopyPaste_2.1.2_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
