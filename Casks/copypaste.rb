cask "copypaste" do
  version "2.1.6"
  sha256 "fb08a79cc5b05209aa3be693783d01de62c038d93c72f08c4b1b442ea915ce6b"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.6/CopyPaste_2.1.6_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
