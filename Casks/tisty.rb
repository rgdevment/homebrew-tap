cask "tisty" do
  version "0.5.0"
  sha256 "2110c81a39586d5daecd883b1db6b4cd39cff122f0a90a8950043dde2abca646"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.5.0/tisty-installer-0.5.0-macos-universal.dmg"
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
