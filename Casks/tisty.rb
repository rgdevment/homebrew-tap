cask "tisty" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.20.0"
  sha256 arm:   "ea83c5e0be0f625ec5769d356755775e14d0d20ce157316fdb0725489c4e2abf",
         intel: "8af939afe4b60387580c64b2c11f58af3e9f5f2ebd94bd12dc2e945699e5b4ff"

  url "https://github.com/rgdevment/Tisty/releases/download/v1.20.0/tisty-installer-1.20.0-macos-#{arch}.dmg"
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
