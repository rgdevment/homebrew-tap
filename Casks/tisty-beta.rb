cask "tisty-beta" do
  version "0.2.0-rc8"
  sha256 "2624be5f393d3456644dd69d51b202ea963f88a3fbb3dd56b7dadd560cd4237c"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.2.0-rc8/tisty-installer-0.2.0-rc8-macos-universal.dmg"
  name "Tisty"
  desc "Local, private task manager whose archive is the point (beta)"
  homepage "https://github.com/rgdevment/Tisty"

  conflicts_with cask: "tisty"
  depends_on macos: :ventura

  app "Tisty.app"

  # The command line travels inside the app; Settings puts it within
  # reach. The tisty-cli formula is for whoever wants only that.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
