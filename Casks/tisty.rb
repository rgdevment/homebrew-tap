cask "tisty" do
  version "1.1.0"
  sha256 "3bc54ff5df206916b55588aac1bfbec0ab1ab6195f8751b62e745b6a1bd988db"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.1.0/tisty-installer-1.1.0-macos-universal.dmg"
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
