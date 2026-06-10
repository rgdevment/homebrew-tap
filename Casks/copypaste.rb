cask "copypaste" do
  version "2.6.3"
  sha256 "340df575b4b5024cce3dd7646b6b420a9c42a970ac20be8779ee5ab4886143d6"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.3/CopyPaste_2.6.3_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
