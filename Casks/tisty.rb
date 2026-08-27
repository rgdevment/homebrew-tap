cask "tisty" do
  version "0.11.1"
  sha256 "025c425811d3fd96ded01bed0a66dc0e8f6e5753ae605ce2405d5f6d1df47b98"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.11.1/tisty-installer-0.11.1-macos-universal.dmg"
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
