cask "tisty" do
  version "1.15.0"
  sha256 "fd1c816f94a4e7302090ed80733e921828bca4b1b630258af235ba157f0fe6e3"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.15.0/tisty-installer-1.15.0-macos-universal.dmg"
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
