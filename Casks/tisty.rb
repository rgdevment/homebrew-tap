cask "tisty" do
  version "1.4.0"
  sha256 "5fd4337fe3028b5e1b570657697d4a4e7359af99df3d7f278e0a5d2186b152d8"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.4.0/tisty-installer-1.4.0-macos-universal.dmg"
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
