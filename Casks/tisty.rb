cask "tisty" do
  version "1.0.7"
  sha256 "75fd79013a4f2f46f910c257cbac9f8cbcf7f2df62d8b2f1809b35fc67d9ae56"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.0.7/tisty-installer-1.0.7-macos-universal.dmg"
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
