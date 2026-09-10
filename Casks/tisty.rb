cask "tisty" do
  version "1.11.0"
  sha256 "c1ae9cdf901d0daf65680e5d3161faf04181e61c25bfe58c0edc2ed00c13956d"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.11.0/tisty-installer-1.11.0-macos-universal.dmg"
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
