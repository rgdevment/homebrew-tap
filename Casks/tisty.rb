cask "tisty" do
  version "1.0.4"
  sha256 "2769baceb7344b655138e6808cfe9f0ee827efc7b8b34077c6f565dfa1893882"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.4/tisty-installer-1.0.4-macos-universal.dmg"
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
