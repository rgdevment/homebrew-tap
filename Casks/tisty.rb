cask "tisty" do
  version "1.16.0"
  sha256 "a4f96eb54adc6eada9a0ecbcd935e26384cddb1ef2725f0f17e5159cb706709e"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.16.0/tisty-installer-1.16.0-macos-universal.dmg"
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
