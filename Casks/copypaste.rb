cask "copypaste" do
  version "2.6.1"
  sha256 "d5ea7492bfec1cc5fa5682b2881efe6490b0ae72e18d08fc807e92151dc8f8f7"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.1/CopyPaste_2.6.1_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
