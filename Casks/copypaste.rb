cask "copypaste" do
  version "2.9.0"
  sha256 "c4fef5b4138b5d35fd1ec2aa2d1550f53153783a5ad3d2464099c07b911cbce5"

  url "https://github.com/rgdevment/CopyPaste/releases/download/v2.9.0/CopyPaste_2.9.0_universal.dmg"
  name "CopyPaste"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/rgdevment/CopyPaste"

  depends_on macos: :ventura

  app "CopyPaste.app"

  zap trash: [
    "~/Library/Application Support/com.rgdevment.copypaste",
  ]
end
