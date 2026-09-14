cask "tisty" do
  version "1.13.2"
  sha256 "423411a749258a291eebbffde4d6a908bf22afe5fe75b34bd142fc5d8be6b592"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.13.2/tisty-installer-1.13.2-macos-universal.dmg"
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
