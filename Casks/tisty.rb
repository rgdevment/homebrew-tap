cask "tisty" do
  version "0.8.2"
  sha256 "2c241eeba4b4faa8eee63f4610255b5a3233db379d1ec838b204194c4775be29"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.8.2/tisty-installer-0.8.2-macos-universal.dmg"
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
