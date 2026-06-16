cask "copypaste" do
  version "2.7.0"
  sha256 "28a2b3c378d38a36210b4a5f809097ea3e7a7c199df0748e2529342e8ef09160"

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
