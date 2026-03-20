cask "copypaste" do
  version "2.1.4"
  sha256 "4cfe925095b43b1cfb9dc7ace0225fdc2486342421f3f86b7ebb0b8c31ff6691"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.4/CopyPaste_2.1.4_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
