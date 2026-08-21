cask "tisty" do
  version "0.6.0"
  sha256 "68035e8081acff6a1907b472106c218b1f6adf304cd03f18ed84cae77eeb6b84"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.6.0/tisty-installer-0.6.0-macos-universal.dmg"
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
