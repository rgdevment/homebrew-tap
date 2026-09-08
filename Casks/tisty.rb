cask "tisty" do
  version "1.9.2"
  sha256 "56969260777dd0cc9d1cea3d7c832a174f3acd21dcfceaa0f6fa3704fac6e09f"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.9.2/tisty-installer-1.9.2-macos-universal.dmg"
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
