cask "tisty" do
  version "0.4.0"
  sha256 "74d9222d43f9762fe373b43dc4f689cb844530d2bd39dbcea20bbb5e1a74d402"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.4.0/tisty-installer-0.4.0-macos-universal.dmg"
  name "Tisty"
  desc "Local, private task manager whose archive is the point"
  homepage "https://github.com/rgdevment/Tisty"

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
