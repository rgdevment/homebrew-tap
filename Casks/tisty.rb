cask "tisty" do
  version "0.7.0"
  sha256 "291874775df48545879146bdb46229b5c508cce234a0a21bf662cd59b5c235b2"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.7.0/tisty-installer-0.7.0-macos-universal.dmg"
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
