cask "copypaste" do
  version "2.1.0"
  sha256 "cc9ed6316e120f5282a58c642db925804f42992ac90e3c0d89bdf34d4bd30d23"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.0/CopyPaste_2.1.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
