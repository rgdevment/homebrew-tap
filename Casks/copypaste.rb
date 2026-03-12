cask "copypaste" do
  version "2.1.0"
  sha256 "a710e4f59019f5fb9e768dd6ed9bb61440389120fe5c6d727a43967e25f6a2a1"

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
