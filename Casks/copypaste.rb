cask "copypaste" do
  version "2.1.3"
  sha256 "67dfb0bf605bc256027cd5c271f815d4e13ce7ed00d92050dbbdd4b6feaa07d2"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.3/CopyPaste_2.1.3_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
