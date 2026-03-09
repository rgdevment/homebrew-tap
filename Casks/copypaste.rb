cask "copypaste" do
  version "2.0.0"
  sha256 "79e010cc839cbe6e1fec3183b5c915657a8434f01486000568322c4e5f90626d"

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
