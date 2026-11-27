cask "copanda-beta" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.5.1-rc1"
  sha256 arm:   "55acee4757352545577ac77029f6a9367a9bf3f8ffe2c462511234bf6aeada93",
         intel: "838b16b63d92214e9eb0ae88b43d1cc5f34cef43577c959b60735d65b317a2a1"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.5.1-rc1/copanda-installer-3.5.1-rc1-macos-#{arch}.dmg"
  name "CoPanda"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine (beta)"
  homepage "https://www.copanda.app/"

  conflicts_with cask: ["copanda"]
  depends_on macos: :ventura

  app "CoPanda.app"

  uninstall quit: "com.rgdevment.copypaste"

  zap trash: [
    "~/Library/Application Support/CopyPaste",
    "~/Library/Preferences/com.rgdevment.copypaste.plist",
    "~/Library/Saved Application State/com.rgdevment.copypaste.savedState",
  ]

  caveats <<~EOS
    CoPanda was called CopyPaste until 3.2. Coming from it, your history,
    settings and shortcut carry over, and the app is CoPanda in Applications.
  EOS
end
