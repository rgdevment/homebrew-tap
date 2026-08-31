cask "tisty" do
  version "1.0.6"
  sha256 "e9c95e179d36f727df9e5dc01a487482b912f8b31e0e9a8342c3a1f71d170f0c"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.6/tisty-installer-1.0.6-macos-universal.dmg"
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
