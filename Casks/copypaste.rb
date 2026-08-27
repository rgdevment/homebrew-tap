cask "copypaste" do
  version "2.12.1"
  sha256 "435bd4b70f05550860dd68eb2e5bf8d57e1e6d85c4758299500ad0152fb8544a"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.12.1/CopyPaste_2.12.1_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: :ventura

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
