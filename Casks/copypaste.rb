cask "copypaste" do
  version "2.1.5"
  sha256 "402a42c4c457f595be520f88a965fdb771bf8f2975614c79ebc292ea611ed772"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.1.5/CopyPaste_2.1.5_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: ">= :ventura"

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
