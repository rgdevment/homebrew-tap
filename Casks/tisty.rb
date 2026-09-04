cask "tisty" do
  version "1.6.0"
  sha256 "ff0c90ff062fe04fb7a61912d29de5a8fe2460f8cfb8c7ad72fc0543429b5136"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.6.0/tisty-installer-1.6.0-macos-universal.dmg"
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
