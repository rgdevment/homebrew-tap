cask "tisty" do
  version "1.2.1"
  sha256 "cd6d2c99efb84764aa84ef83a113f8ea61ab850e95c076e695bd72c0f23ead01"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.2.1/tisty-installer-1.2.1-macos-universal.dmg"
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
