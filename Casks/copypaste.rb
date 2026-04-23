cask "copypaste" do
  version "2.2.5"
  sha256 "68ab5e0a6da196fd192cb7a439c6f6e7105a0152777b3d52d9dbaf6df76c2df8"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.5/CopyPaste_2.2.5_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
