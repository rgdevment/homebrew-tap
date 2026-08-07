cask "copypaste" do
  version "2.10.0"
  sha256 "81d4e971b5199af7284e3c6bbd3e647b606c22492a2775c8296e7ebc187ca9a3"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.10.0/CopyPaste_2.10.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: :ventura

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
