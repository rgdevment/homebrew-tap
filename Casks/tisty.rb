cask "tisty" do
  version "1.9.3"
  sha256 "61259a1bc0380d315c3e53d1e39961c3f7fc25d6b8d203d44796600128b665de"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.9.3/tisty-installer-1.9.3-macos-universal.dmg"
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
