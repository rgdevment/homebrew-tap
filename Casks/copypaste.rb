cask "copypaste" do
  version "2.2.1"
  sha256 "6d671d38d1770da10f13cda90eb93c82dfdc3587041c082456c94520c707a5fe"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.1/CopyPaste_2.2.1_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
