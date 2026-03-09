cask "copypaste" do
  version "2.0.0"
  sha256 "52aa5ab7d95cdf8e033f9aab1d7658066ffd5e34b5d417f6e62974b23be73edb"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.0.0/CopyPaste_2.0.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
