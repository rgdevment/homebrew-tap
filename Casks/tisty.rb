cask "tisty" do
  version "0.11.0"
  sha256 "4f29a8016ad4fafb9fe1b3ca29e5c72e9951c61ddaf0514d681aa9abb3bf3d1d"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.11.0/tisty-installer-0.11.0-macos-universal.dmg"
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
