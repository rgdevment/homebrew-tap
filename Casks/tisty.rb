cask "tisty" do
  version "1.0.5"
  sha256 "9da539498fe9d480c10e0013b251f6eb7d2ea3d3eef8b87847e74e48c17cd6f7"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.5/tisty-installer-1.0.5-macos-universal.dmg"
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
