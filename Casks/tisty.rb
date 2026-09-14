cask "tisty" do
  version "1.14.0"
  sha256 "98e8d2a8995d933eb26093dae7aa9fabaa32d2ba49eac33296a93ce21efc42b7"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.14.0/tisty-installer-1.14.0-macos-universal.dmg"
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
