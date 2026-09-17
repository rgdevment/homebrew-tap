cask "tisty" do
  version "1.17.1"
  sha256 "ba97c2de611a4ce1731c03d448fab9a568b136c54e0373c50136ac8989f28427"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.17.1/tisty-installer-1.17.1-macos-universal.dmg"
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
