cask "tisty" do
  version "0.12.0"
  sha256 "cf82acb2ee581158506d29cef899298ed18ac289ae9a318b53b94b1d3ae023b0"

  url "https://github.com/rgdevment/Tisty/releases/download/v0.12.0/tisty-installer-0.12.0-macos-universal.dmg"
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
