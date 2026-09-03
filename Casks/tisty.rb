cask "tisty" do
  version "1.4.1"
  sha256 "de30b6d3de2f0625709587b5c4a40d21bd62bc55fe6a07e391ec0e5e0ee95dd1"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.4.1/tisty-installer-1.4.1-macos-universal.dmg"
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
