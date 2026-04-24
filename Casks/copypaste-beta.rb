cask "copypaste-beta" do
  version "2.3.0-beta.1"
  sha256 "5c773d5d1e1049328ebc19039fe2cd2c17cc06c4f5da4fa693861ab96e7545e9"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.3.0-beta.1/CopyPaste_2.3.0-beta.1_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS (beta)"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
