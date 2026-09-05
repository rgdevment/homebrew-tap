cask "tisty" do
  version "1.8.0"
  sha256 "2a2c8a85aa3bf8a4afc829844564ad62fa0d3c3a3bf3fcb236198fa1a0aaf607"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.8.0/tisty-installer-1.8.0-macos-universal.dmg"
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
