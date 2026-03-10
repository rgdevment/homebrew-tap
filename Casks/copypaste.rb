cask "copypaste" do
  version "2.0.1"
  sha256 "cf92564a249c37dd90e52ba70a4ceeb2b8a76a610e6cc85ce001aa3422059781"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.0.1/CopyPaste_2.0.1_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
