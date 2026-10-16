cask "copanda" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.3.0"
  sha256 arm:   "a560976d13e55ad11d7696857eff9ec2759f8341c5d0705a23c0fd1e5fe46597",
         intel: "6f39acb014bc50d3f4cfe3be07dad6b6a7d87df394016b99857cb7d27bd6641b"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.3.0/copanda-installer-3.3.0-macos-#{arch}.dmg"
  name "CoPanda"
  name "CopyPaste"
  desc "Clipboard history that stays on your machine"
  homepage "https://www.copanda.app/"

  auto_updates true

  conflicts_with cask: ["copanda-beta"]
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
