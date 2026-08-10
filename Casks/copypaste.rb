cask "copypaste" do
  version "2.11.0"
  sha256 "b3792ef24501220fd03ce06215a305e16cd16dfa06c9413d46ba4b57d92bc17e"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.11.0/CopyPaste_2.11.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: :ventura

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
