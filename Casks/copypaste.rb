cask "copypaste" do
  version "2.2.4"
  sha256 "bd00d4d62db07214314163217912fc6c7acf8ef83205dddb495dc1d66350d9a5"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.2.4/CopyPaste_2.2.4_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
