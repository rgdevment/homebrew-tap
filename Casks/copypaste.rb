cask "copypaste" do
  version "2.0.0"
  sha256 "1f83f1f724fd7bc82bf5894c2251f79b0349b8191ba0510c3a994f8e3d792354"

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
