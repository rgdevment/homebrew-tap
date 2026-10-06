cask "copypaste" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0"
  sha256 arm:   "ceb7b2716940e71df2860748f6dabbfe11977077773a22cf2bb31926bb588393",
         intel: "eb73402b34e6cc471d4e7342e522ba83bad514aad8e5595b1a5f3fe7b809ac79"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.0.0/copypaste-installer-3.0.0-macos-#{arch}.dmg"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine"
  homepage "https://rgdevment.com/copypaste/"

  auto_updates true

  conflicts_with cask: "copypaste-beta"
  depends_on macos: :ventura

  app "CopyPaste.app"

  uninstall quit: "com.rgdevment.copypaste"

  zap trash: [
    "~/Library/Application Support/CopyPaste",
    "~/Library/Preferences/com.rgdevment.copypaste.plist",
    "~/Library/Saved Application State/com.rgdevment.copypaste.savedState",
  ]
end
