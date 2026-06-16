cask "copypaste" do
  version "2.7.0"
  sha256 "efd3415c6da6521c558de8b29bfeddbfce02c85a5a5234654e90f8c59462399a"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.7.0/CopyPaste_2.7.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
