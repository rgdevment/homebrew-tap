cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.19.0"
  sha256 arm:   "cc5067bb74405bb58994c871569626fcf95237cd5b96fef38ab1bd693b8f4138",
         intel: "f428c11ada7f58820d4b0ca5657d378c7968a93ac84c97924febd8ace1b3ff84"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.19.0/tisty-installer-1.19.0-macos-#{arch}.dmg"
  name "Tisty"
  desc "Notes, documents and tasks, all local, no subscription, no telemetry"
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
