cask "tisty" do
  version "0.10.0"
  sha256 "03aca33682a7c60a62dbbf1d966b17f32cc278470c5d3f6376cb54bcfca079d9"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.10.0/tisty-installer-0.10.0-macos-universal.dmg"
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
