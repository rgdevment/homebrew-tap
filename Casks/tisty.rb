cask "tisty" do
  version "1.3.0"
  sha256 "2ea045864d1e6492704f7581acb9d2c27a61de8675e2601acb1bf7f3ee01b29b"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.3.0/tisty-installer-1.3.0-macos-universal.dmg"
  name "Tisty"
  desc "Local, private task manager whose archive is the point"
  homepage "https://github.com/rgdevment/Tisty"

  auto_updates true

  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  app "Tisty.app"

  # The command line travels inside the app; Settings puts it within
  # reach. The tisty-cli formula is for whoever wants only that.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
