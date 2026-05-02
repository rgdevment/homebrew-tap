cask "copypaste" do
  version "2.5.0"
  sha256 "0be808a5d0d25aacdda3e051f1a0b27b5b9cf6b8e048989635b7e679070bf4df"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.5.0/CopyPaste_2.5.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
