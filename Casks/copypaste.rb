cask "copypaste" do
  version "2.6.0"
  sha256 "00194f19a87740e1a51fcc3e92a13951dc041734d23ad61b140915bcd894ad11"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.6.0/CopyPaste_2.6.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
