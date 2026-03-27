cask "copypaste" do
  version "2.2.0"
  sha256 "4ceafa6b6f15014abbd85c98b5a626c064371fe15d377c25d8db695523524c38"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.0/CopyPaste_2.2.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
