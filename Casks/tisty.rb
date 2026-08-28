cask "tisty" do
  version "0.13.0"
  sha256 "756dd25b3498efff51b9fa1e36cca5d4291b2c194f7cb23034b962487ef9076e"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.13.0/tisty-installer-0.13.0-macos-universal.dmg"
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
