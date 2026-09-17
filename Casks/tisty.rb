cask "tisty" do
  version "1.16.1"
  sha256 "4046295ca0477ce0b438216da541a5b4dd3edd4a25a42b1a7bd1457cefefd00f"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.16.1/tisty-installer-1.16.1-macos-universal.dmg"
  name "Tisty"
  desc "Local, private task manager whose archive is the point"
  homepage "https://github.com/rgdevment/Tisty"

  auto_updates true

  conflicts_with cask: "tisty-beta"
  depends_on macos: :ventura

  app "Tisty.app"

  # The command line travels inside the app, as the assistant's door.
  zap trash: [
    "~/Library/Application Support/dev.rgdevment.tisty",
    "~/Library/Caches/dev.rgdevment.tisty",
  ]
end
