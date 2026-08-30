cask "tisty" do
  version "1.0.3"
  sha256 "d2d1c2733d880211ad5c80fe5f818cd6f4432c4bbf156895495ff38d46f68076"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.3/tisty-installer-1.0.3-macos-universal.dmg"
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
