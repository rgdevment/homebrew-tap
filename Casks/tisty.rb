cask "tisty" do
  version "1.13.0"
  sha256 "8f75bb821129533901377ead126cc24867632222fd00ea6d593644a9d6840022"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.13.0/tisty-installer-1.13.0-macos-universal.dmg"
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
