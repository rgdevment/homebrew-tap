cask "copypaste" do
  version "2.4.0"
  sha256 "4263785090d8aceacab0b33637f19dcde01c30a7eb4bbf8f8f845efb6f8737ca"

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
