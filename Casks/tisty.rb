cask "tisty" do
  version "1.12.0"
  sha256 "fce3a66365e9c3dd616bbbc5aff41fdc16b6787976ff8bfd153d3fef6fa932d4"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.12.0/tisty-installer-1.12.0-macos-universal.dmg"
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
