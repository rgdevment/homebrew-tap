cask "tisty" do
  version "1.10.0"
  sha256 "7380f8b0383880112b86d6e7723ada208c674407ca017446567e3bd48aa53124"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.10.0/tisty-installer-1.10.0-macos-universal.dmg"
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
