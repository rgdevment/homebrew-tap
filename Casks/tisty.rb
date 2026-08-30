cask "tisty" do
  version "1.0.1"
  sha256 "a026a17dd3a536c5041792c49bd8d70d60def4c9258dcc529209ee514a9d9484"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.1/tisty-installer-1.0.1-macos-universal.dmg"
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
