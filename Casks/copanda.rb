cask "copanda" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.4.0"
  sha256 arm:   "570502588359fa42667975fa980d27d1c0e32f9584818a664ba4fb279916bc12",
         intel: "00959861970a77679d7d3c85b2525a3e167f5cb8e447bfe2a282a96a3699e802"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v3.4.0/copanda-installer-3.4.0-macos-#{arch}.dmg"
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
