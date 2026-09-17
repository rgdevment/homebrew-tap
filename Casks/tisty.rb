cask "tisty" do
  version "1.17.0"
  sha256 "8838952db1c4acc7c8d889c4cf06f8647556df2603f19a93d8a926c63114334e"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.17.0/tisty-installer-1.17.0-macos-universal.dmg"
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
