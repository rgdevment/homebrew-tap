cask "tisty" do
  version "1.13.3"
  sha256 "36c45418151c0d31a7201daffc30e7fc9d0a6c7b5faf9b42a92607549e57db36"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.13.3/tisty-installer-1.13.3-macos-universal.dmg"
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
