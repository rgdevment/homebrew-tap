cask "tisty" do
  version "0.8.1"
  sha256 "41e9ff97c6ea8c6e9f461cb63105e52028e885403b903e73edd604e34a8f7235"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.8.1/tisty-installer-0.8.1-macos-universal.dmg"
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
