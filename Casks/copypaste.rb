cask "copypaste" do
  version "2.4.1"
  sha256 "0c39c063a86f4386d301a2e387914b49c5d15e5f9e8a431b8a2329d637dd7a87"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.4.1/CopyPaste_2.4.1_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
